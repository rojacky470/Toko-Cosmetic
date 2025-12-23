import { z } from "zod";

// Skema untuk data pemesanan (Booking)
export const bookingSchema = z.object({
  name: z.string().min(1, "Name is required"),
  email: z.string().email("Invalid email"),
  phone: z.string().min(1, "Phone number is required"),
  post_code: z.string().min(1, "Post code is required"),
  address: z.string().min(1, "Address is required"),
  city: z.string().min(1, "City is required"),
});

// Skema untuk data pembayaran (Payment)
export const paymentSchema = z.object({
  // Validasi untuk bukti pembayaran (file upload)
  proof: z
    .instanceof(File)
    .refine((file) => file.size > 0, "Proof of payment is required"),
});

// Skema untuk data melihat/memeriksa pemesanan (View Booking)
export const viewBookingSchema = z.object({
  booking_trx_id: z.string().min(1, "Booking TRX is required"),
  email: z.string().min(1, "email number is required"), // Catatan: Pesan error di gambar mengatakan "email number is required", mungkin maksudnya "Email is required"
});

// Anda bisa menambahkan tipe data yang diinfer dari skema di sini
//export type BookingPayload = z.infer<typeof bookingSchema>;
//export type PaymentPayload = z.infer<typeof paymentSchema>;
//export type ViewBookingPayload = z.infer<typeof viewBookingSchema>;