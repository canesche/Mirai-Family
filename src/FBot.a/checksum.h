#pragma once

uint16_t ip_header_checksum(uint16_t *, uint32_t);
uint16_t tcp_udp_header_checksum(struct iphdr *, void *, uint16_t, int);
