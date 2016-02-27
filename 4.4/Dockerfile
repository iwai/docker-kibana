FROM kibana:4.4

RUN set -x \
    && gosu kibana kibana plugin --install elasticsearch/marvel/2.2.0 \
    && gosu kibana kibana plugin --install elastic/sense

EXPOSE 5601
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["kibana"]
