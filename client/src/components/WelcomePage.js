import React from 'react'

function WelcomePage() {

    const image_url = 'https://images.unsplash.com/photo-1541701494587-cb58502866ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'

    const colors = {
      primary: "#060606",
      background: "#E0E0E0",
      disabled: "#D9D9D9"
    }
  return (
<div className="w-full min-h-screen flex items-start">
      <div className='relative w-1/2 min-h-screen flex flex-col'>
       
       
        <img src={image_url} className='w-full min-h-screen object-cover  '/>
        </div>
        <div className='w-1/2 h-full bg-white flex flex-col p-20 justify-between'>
          <h1 className='text-xl text-black font-semibold uppercase'>Chaos Theory</h1>
            <div className='w-full flex flex-col'>
              <div className='w-full flex flex-col mb-1'/>
                  <p className='text-sm mb-2'>Welcome Back!</p>
            </div>

            <div className='w-full flex flex-col'>
              <input
                type='email'
                placeholder='email'
                className='w-full text-black py-2 my-2 bg-transparent border-b border-black outline-none focus:outline-none'
              />

              <input
                type='password'
                placeholder='password'
                className='w-full text-black py-2 my-2 bg-transparent border-b border-black outline-none focus:outline-none'
              />

            </div>
            <div className='w-full flex items-center justify-between'>
              <div className='w-full flex items-center'>
                <input
                  type='checkbox'
                  className='w-4 h-4 mr-2'/>
                  <p className='text-sm'>Remember Me</p>
              </div>
                  <p className='text-sm cursor-pointer underline underline-offset-2'>Forgot Password?</p>
            </div>
            <div>
              <button className='w-full text-white my-2 font-semibold bg-[#FAAD63] rounded-md p-4 text-center flex items-center justify-center '>Login</button>
            </div>
            <div className='w-full'>
              <p>Don't have an account? <span className='front-semibold underline underline-offset-2 cursor-pointer'>Signup</span></p>
            </div>
        </div>
    </div>
  )
}

export default WelcomePage