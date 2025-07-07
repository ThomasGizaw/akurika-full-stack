import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import auth from "../../utils/auth";

// Constant
const CART = "CART";

// Initial state
const initialState = {
  cart: null,
  status: null,
};

// Fetch data from API
export const fetchCart = createAsyncThunk("CART/fetchCart", async () => {
  if (auth()) {
    const res = await fetch(
      `${process.env.NEXT_PUBLIC_BASE_URL}api/cart?token=${
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
});

// Create slice with builder callback
export const cart = createSlice({
  name: CART,
  initialState,
  reducers: {}, // Add reducers here if needed
  extraReducers: (builder) => {
    builder
      .addCase(fetchCart.pending, (state) => {
        state.status = "loading";
      })
      .addCase(fetchCart.fulfilled, (state, { payload }) => {
        state.cart = payload;
        state.status = "success";
      })
      .addCase(fetchCart.rejected, (state) => {
        state.status = "failed";
      });
  },
});

export default cart.reducer;
