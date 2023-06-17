FROM python
ADD garmin-to-influxdb.py /app/garmin-to-influxdb.py
ADD requirements.txt /app/requirements.txt
RUN cd /app && pip install -r requirements.txt
CMD ["/app/garmin-to-influxdb.py"]
ENTRYPOINT ["python"]