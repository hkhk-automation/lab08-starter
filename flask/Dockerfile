FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Versioon tuleb ehitamisel: docker build --build-arg VERSIOON=<räsi>
ARG VERSIOON=kohalik
ENV VERSIOON=$VERSIOON
EXPOSE 5000
CMD ["python", "app.py"]
