FROM juangrp/hola-clase3:1

WORKDIR /app

COPY app.py .

RUN pip install flask

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 3000

CMD ["python", "app.py"]
