import { BrowserRouter, Route, Routes } from "react-router-dom"

import BrowsePage from "./pages/BrowsePage"
import DetailsPage from "./pages/DetailsPage"
import CategoryPage from "./pages/CategoryPage"
import MyCartPage from "./pages/MyCartPage"
import BookingPage from "./pages/BookingPage"
import PaymentPage from "./pages/PaymentPage"
import BookingFinishedPage from "./pages/BookingFinished"
import MyBookingDetailsPages from "./pages/MyBookingDetails"
import MyOrdersPages from "./pages/MyOrdersPage"


function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<BrowsePage />} />
        <Route path="/cosmetic/:slug" element={<DetailsPage />} />
        <Route path="/category/:slug" element={<CategoryPage />} />
        <Route path="/cart" element={<MyCartPage />} />
        <Route path="/booking" element={<BookingPage />} />
        <Route path="/payment" element={<PaymentPage />} />
        <Route path="/booking-finished" element={<BookingFinishedPage />} />
        <Route path="/check-booking" element={<MyOrdersPages />} />
        <Route path="/my-booking" element={<MyBookingDetailsPages />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App
