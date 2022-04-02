.class public Lcom/yandex/metrica/impl/ob/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ex$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .registers 3

    :try_start_0
    const-string v0, "X.509"

    .line 47
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_1f
    .catchall {:try_start_0 .. :try_end_b} :catchall_1d

    .line 50
    :try_start_b
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_18

    .line 52
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_1f
    .catchall {:try_start_11 .. :try_end_14} :catchall_1d

    .line 58
    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    return-object v0

    :catchall_18
    move-exception v0

    .line 52
    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1f
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    goto :goto_26

    :catch_1f
    move-exception v0

    .line 55
    :try_start_20
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    .line 58
    :goto_26
    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_29

    .line 61
    :catch_29
    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 2

    .line 67
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ex;->a(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
