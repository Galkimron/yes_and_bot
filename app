!pip install gradio -q
!pip install --upgrade pip



user_id_list = []
with gr.Blocks() as demo:
    chatbot = gr.Chatbot()
    history_msgs_var = gr.State([])

    # user_id1 = gr.State(4)
    user_id,user_id_list = get_missing_number(user_id_list)
    # user_id_state = gr.State(int(user_id))

    # print(f"user_id1: {user_id_state} user_id1.value: {user_id_state.value}")
    # print(f"user_id1: {type(user_id_state)} user_id1.value: {type(user_id_state.value)}")

    user_id_state = gr.State(user_id)
    print(f"user_id_state: {user_id_state} user_id1.value: {user_id_state.value}")
    print(f"user_id_state: {type(user_id_state)} user_id1.value: {type(user_id_state.value)}")

    print(f"in main - history_msgs_var: {history_msgs_var},history_msgs_var.value: {history_msgs_var.value}, user_id_list: {history_msgs_var} ")

    print(f"in main - user_id_state: {user_id_state},user_id_state.value: {user_id_state.value}, user_id_list: {user_id_list} ")
    with gr.Row():
        txt = gr.Textbox(show_label=False, placeholder="Enter text and press enter")#.style(container=False)
    

    tm.sleep(5)

demo.launch(debug=True,share=True)
