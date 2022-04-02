.class public Lcom/startapp/common/a/h;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/common/a/h$a;,
        Lcom/startapp/common/a/h$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    .line 92
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/startapp/common/a/h$a;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/startapp/common/a/h$a;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 182
    :try_start_a
    invoke-static/range {v0 .. v6}, Lcom/startapp/common/a/h;->b(Landroid/content/Context;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_ba
    .catchall {:try_start_a .. :try_end_e} :catchall_b7

    .line 184
    :try_start_e
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_b3
    .catchall {:try_start_e .. :try_end_12} :catchall_b1

    const/16 p3, 0xc8

    const/4 p4, -0x1

    const-string v0, "UTF-8"

    const/16 v1, 0x400

    if-ne p2, p3, :cond_64

    .line 208
    :try_start_1b
    invoke-static {p0, p1}, Lcom/startapp/common/d/a;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 211
    new-instance p1, Lcom/startapp/common/a/h$a;

    invoke-direct {p1}, Lcom/startapp/common/a/h$a;-><init>()V

    .line 212
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/startapp/common/a/h$a;->b(Ljava/lang/String;)V

    if-eqz v8, :cond_52

    .line 215
    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    new-array v1, v1, [C

    .line 218
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 220
    :goto_41
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-eq v0, p4, :cond_4b

    .line 221
    invoke-virtual {p3, v1, v9, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_41

    .line 223
    :cond_4b
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/startapp/common/a/h$a;->a(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_52} :catch_5f
    .catchall {:try_start_1b .. :try_end_52} :catchall_b1

    :cond_52
    if-eqz v8, :cond_59

    .line 234
    :try_start_54
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    nop

    :cond_59
    :goto_59
    if-eqz p0, :cond_5e

    .line 238
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5e
    return-object p1

    :catch_5f
    move-exception p1

    move v9, p2

    move-object p3, v8

    const/4 v7, 0x0

    goto :goto_b5

    .line 188
    :cond_64
    :try_start_64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sendGetWithResponse code = ["

    .line 189
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x5d

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7a} :catch_ae
    .catchall {:try_start_64 .. :try_end_7a} :catchall_b1

    if-eqz p3, :cond_9e

    .line 193
    :try_start_7c
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-array v1, v1, [C

    .line 196
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 198
    :goto_8d
    invoke-virtual {v3, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-eq v0, p4, :cond_97

    .line 199
    invoke-virtual {v2, v1, v9, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_8d

    .line 201
    :cond_97
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_9e
    new-instance p4, Lcom/startapp/common/e;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, v8, v7, p2}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    throw p4
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_a8} :catch_aa
    .catchall {:try_start_7c .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception p1

    goto :goto_d9

    :catch_aa
    move-exception p1

    move-object v8, p0

    move v9, p2

    goto :goto_bc

    :catch_ae
    move-exception p1

    move v9, p2

    goto :goto_b4

    :catchall_b1
    move-exception p1

    goto :goto_da

    :catch_b3
    move-exception p1

    :goto_b4
    move-object p3, v8

    :goto_b5
    move-object v8, p0

    goto :goto_bc

    :catchall_b7
    move-exception p1

    move-object p0, v8

    goto :goto_da

    :catch_ba
    move-exception p1

    move-object p3, v8

    .line 228
    :goto_bc
    :try_start_bc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error execute Exception "

    .line 229
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance p2, Lcom/startapp/common/e;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1, v7, v9}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    throw p2
    :try_end_d7
    .catchall {:try_start_bc .. :try_end_d7} :catchall_d7

    :catchall_d7
    move-exception p1

    move-object p0, v8

    :goto_d9
    move-object v8, p3

    :goto_da
    if-eqz v8, :cond_e1

    .line 234
    :try_start_dc
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_e1

    :catch_e0
    nop

    :cond_e1
    :goto_e1
    if-eqz p0, :cond_e6

    .line 238
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e6
    goto :goto_e8

    :goto_e7
    throw p1

    :goto_e8
    goto :goto_e7
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/startapp/common/a/h$b;
    .registers 3

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_15

    .line 319
    invoke-static {p0}, Lcom/startapp/common/a/h;->b(Landroid/content/Context;)Lcom/startapp/common/a/h$b;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "WIFI"

    const-string v1, "e100"

    :try_start_4
    const-string v2, "connectivity"

    .line 281
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_64

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 283
    invoke-static {p0, v3}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 284
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 285
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 286
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_35

    goto :goto_5f

    .line 290
    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MOBILE"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "phone"

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_58

    .line 294
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    :cond_58
    const-string v0, "e101"

    goto :goto_5f

    :cond_5b
    move-object v0, v1

    goto :goto_5f

    :cond_5d
    const-string v0, "e102"

    :goto_5f
    move-object v1, v0

    goto :goto_64

    :cond_61
    const-string p0, "e105"
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_63} :catch_64

    move-object v1, p0

    :catch_64
    :cond_64
    :goto_64
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v6, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 97
    invoke-static/range {v0 .. v6}, Lcom/startapp/common/a/h;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    :try_start_2
    invoke-static/range {p0 .. p6}, Lcom/startapp/common/a/h;->b(Landroid/content/Context;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_c0
    .catchall {:try_start_2 .. :try_end_6} :catchall_bd

    if-eqz p2, :cond_28

    .line 108
    :try_start_8
    array-length p1, p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9} :catch_b9
    .catchall {:try_start_8 .. :try_end_9} :catchall_b7

    if-lez p1, :cond_28

    .line 111
    :try_start_b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_1d

    .line 112
    :try_start_f
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1b

    if-eqz p1, :cond_28

    .line 116
    :try_start_14
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 117
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_b9
    .catchall {:try_start_14 .. :try_end_1a} :catchall_b7

    goto :goto_28

    :catchall_1b
    move-exception p2

    goto :goto_1f

    :catchall_1d
    move-exception p2

    move-object p1, v1

    :goto_1f
    if-eqz p1, :cond_27

    .line 116
    :try_start_21
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 117
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_b9
    .catchall {:try_start_21 .. :try_end_27} :catchall_b7

    .line 119
    :catch_27
    :cond_27
    :try_start_27
    throw p2

    .line 124
    :catch_28
    :cond_28
    :goto_28
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_b9
    .catchall {:try_start_27 .. :try_end_2c} :catchall_b7

    const/16 p2, 0xc8

    const/4 p3, -0x1

    const-string p4, "UTF-8"

    const/16 p5, 0x400

    if-eq p1, p2, :cond_79

    .line 126
    :try_start_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Error code = ["

    .line 127
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p6, 0x5d

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 131
    new-instance p6, Ljava/io/StringWriter;

    invoke-direct {p6}, Ljava/io/StringWriter;-><init>()V

    new-array p5, p5, [C

    .line 134
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    :goto_5e
    invoke-virtual {v2, p5}, Ljava/io/Reader;->read([C)I

    move-result p4

    if-eq p4, p3, :cond_68

    .line 138
    invoke-virtual {p6, p5, v0, p4}, Ljava/io/Writer;->write([CII)V

    goto :goto_5e

    .line 140
    :cond_68
    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_6f
    new-instance p3, Ljava/lang/Exception;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p3

    .line 145
    :cond_79
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_7d} :catch_b3
    .catchall {:try_start_35 .. :try_end_7d} :catchall_b7

    if-eqz p2, :cond_a6

    .line 147
    :try_start_7f
    new-instance p6, Ljava/io/StringWriter;

    invoke-direct {p6}, Ljava/io/StringWriter;-><init>()V

    new-array p5, p5, [C

    .line 150
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p2, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    :goto_90
    invoke-virtual {v1, p5}, Ljava/io/Reader;->read([C)I

    move-result p4

    if-eq p4, p3, :cond_9a

    .line 153
    invoke-virtual {p6, p5, v0, p4}, Ljava/io/Writer;->write([CII)V

    goto :goto_90

    .line 155
    :cond_9a
    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9e} :catch_a1
    .catchall {:try_start_7f .. :try_end_9e} :catchall_9f

    goto :goto_a6

    :catchall_9f
    move-exception p1

    goto :goto_df

    :catch_a1
    move-exception p3

    move-object v1, p0

    move v0, p1

    move-object p1, p3

    goto :goto_c2

    :cond_a6
    :goto_a6
    if-eqz p2, :cond_ad

    .line 167
    :try_start_a8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_ad

    :catch_ac
    nop

    :cond_ad
    :goto_ad
    if-eqz p0, :cond_b2

    .line 171
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b2
    return-object v1

    :catch_b3
    move-exception p2

    move v0, p1

    move-object p1, p2

    goto :goto_ba

    :catchall_b7
    move-exception p1

    goto :goto_e0

    :catch_b9
    move-exception p1

    :goto_ba
    move-object p2, v1

    move-object v1, p0

    goto :goto_c2

    :catchall_bd
    move-exception p1

    move-object p0, v1

    goto :goto_e0

    :catch_c0
    move-exception p1

    move-object p2, v1

    .line 161
    :goto_c2
    :try_start_c2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error execute Exception "

    .line 162
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance p3, Lcom/startapp/common/e;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p1, v0}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p3
    :try_end_dd
    .catchall {:try_start_c2 .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception p1

    move-object p0, v1

    :goto_df
    move-object v1, p2

    :goto_e0
    if-eqz v1, :cond_e7

    .line 167
    :try_start_e2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_e7

    :catch_e6
    nop

    :cond_e7
    :goto_e7
    if-eqz p0, :cond_ec

    .line 171
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ec
    goto :goto_ee

    :goto_ed
    throw p1

    :goto_ee
    goto :goto_ed
.end method

.method public static a(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 3

    .line 379
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 382
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 383
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :cond_14
    int-to-long v0, p0

    .line 386
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 390
    :try_start_1d
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/startapp/common/a/h$b;
    .registers 6

    const-string v0, "e100"

    .line 326
    new-instance v1, Lcom/startapp/common/a/h$b;

    invoke-direct {v1}, Lcom/startapp/common/a/h$b;-><init>()V

    :try_start_7
    const-string v2, "connectivity"

    .line 328
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_6a

    const-string v3, "e105"

    if-eqz v2, :cond_6a

    :try_start_13
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    .line 330
    invoke-static {p0, v4}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 331
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 332
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 333
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WIFI"

    .line 334
    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_64

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    .line 336
    invoke-static {p0, v2}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 338
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    const/4 v2, 0x5

    .line 339
    invoke-static {p0, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapp/common/a/h$b;->c(Ljava/lang/String;)V

    .line 340
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/startapp/common/a/h$b;->b(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_69

    :cond_64
    const-string v3, "e103"

    goto :goto_69

    :cond_67
    const-string v3, "e102"
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_69} :catch_6a

    :cond_69
    :goto_69
    move-object v0, v3

    .line 361
    :catch_6a
    :cond_6a
    invoke-virtual {v1, v0}, Lcom/startapp/common/a/h$b;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 245
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string p3, "Cache-Control"

    const-string v0, "no-cache"

    .line 248
    invoke-virtual {p0, p3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {p0, p1}, Lcom/startapp/common/d/a;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-eqz p4, :cond_24

    const-string p1, "-1"

    .line 252
    invoke-virtual {p4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "User-Agent"

    .line 253
    invoke-virtual {p0, p1, p4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const-string p1, "Accept"

    const-string p3, "application/json;text/html;text/plain"

    .line 256
    invoke-virtual {p0, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    .line 258
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 259
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-eqz p2, :cond_51

    const-string p1, "POST"

    .line 262
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 263
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 264
    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string p1, "Content-Type"

    .line 265
    invoke-virtual {p0, p1, p6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_56

    const-string p1, "Content-Encoding"

    const-string p2, "gzip"

    .line 267
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_51
    const-string p1, "GET"

    .line 270
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "connectivity"

    .line 367
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_27

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 368
    invoke-static {p0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 369
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 370
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 371
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method
