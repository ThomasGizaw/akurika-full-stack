import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import auth from "../../utils/auth";

const initialState = {
  compareProducts: null,
  status: null,
};

export const fetchCompareProducts = createAsyncThunk(
  "COMPARE/fetchCompareProducts",
  async () => {
    if (auth()) {
      const res = await fetch(
        `${process.env.NEXT_PUBLIC_BASE_URL}api/user/compare-product?token=${
          auth().access_token
        }`,
        {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
          },
        }
      );
      const data = await res.json();
      return data;
    }
    return false;
  }
);

export const compareAction = createSlice({
  name: "COMPARE",
  initialState,
  reducers: {}, // Add reducers here if needed
  extraReducers: (builder) => {
    builder
      .addCase(fetchCompareProducts.pending, (state) => {
        state.status = "loading";
      })
      .addCase(fetchCompareProducts.fulfilled, (state, { payload }) => {
        state.compareProducts = payload;
        state.status = "success";
      })
      .addCase(fetchCompareProducts.rejected, (state) => {
        state.status = "failed";
      });
  },
});

// Export the reducer
export default compareAction.reducer;
