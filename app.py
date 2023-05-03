pip install gradio -q
pip install --upgrade pip

import gradio as gr
import time as tm

user_id_list = []
with gr.Blocks() as demo:
    chatbot = gr.Chatbot()
    history_msgs_var = gr.State([])

   
    with gr.Row():
        txt = gr.Textbox(show_label=False, placeholder="Enter text and press enter")#.style(container=False)
    

    tm.sleep(5)

demo.launch(debug=True,share=True)
