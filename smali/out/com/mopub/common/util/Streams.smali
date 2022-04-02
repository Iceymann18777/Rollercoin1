.class public Lcom/mopub/common/util/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 70
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_14

    .line 73
    :catch_7
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Unable to close stream. Ignoring."

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_14
    return-void
.end method

.method public static copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 26
    :goto_8
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x0

    .line 27
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    :cond_14
    return-void

    .line 20
    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to copy from or to a null stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :goto_1d
    throw p0

    :goto_1e
    goto :goto_1d
.end method

.method public static copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_41

    if-eqz p1, :cond_41

    const/16 v0, 0x4000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 40
    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_40

    int-to-long v4, v3

    add-long/2addr v1, v4

    cmp-long v4, v1, p2

    if-gez v4, :cond_1c

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a

    .line 43
    :cond_1c
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error copying content: attempted to copy "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes, with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " maximum."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    return-void

    .line 33
    :cond_41
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to copy from or to a null stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4a

    :goto_49
    throw p0

    :goto_4a
    goto :goto_49
.end method

.method public static readStream(Ljava/io/InputStream;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    .line 55
    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_2

    :cond_d
    return-void
.end method
