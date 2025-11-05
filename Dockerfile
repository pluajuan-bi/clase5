FROM adonispaz9506/holamundobase:1

WORKDIR /app

COPY app.py .

RUN pip install flask

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 3000

CMD ["python", "app.py"]
