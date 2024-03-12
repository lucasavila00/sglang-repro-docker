FROM python:3.11-bullseye

RUN git clone https://github.com/sgl-project/sglang.git
RUN cd sglang && git checkout b2eb080501b4b4a0d72eb5a0e6be30d43811dcbd && python3.11 -m pip install -e "python[all]"

# but the following works
# RUN python3.11 -m pip install "sglang[all]==0.1.13"

ADD a.py /a.py
ADD handler.py /handler.py
