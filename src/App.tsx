import Navbar from "@/layout/Navbar";
import Hero from "@/sections/Hero";
import About from "@/sections/About";
import Contact from "@/sections/Contact";
import Experiences from "@/sections/Experiences";
import Projects from "@/sections/Projects";
import Testimonials from "@/sections/Testimonials";
import { Footer } from "./layout/Footer";



function App() {
  return (
    <div className="min-h-screen overflow-x-hidden" >
      <Navbar />
      <main>
        <Hero />
        <About />
        <Projects />
        <Experiences />
        <Testimonials />
        <Contact />
      </main>
      <Footer />
    </div>
  )
}

export default App
