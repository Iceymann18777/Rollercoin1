.class public Lcom/startapp/android/publish/ads/video/h;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/video/h$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/startapp/android/publish/ads/video/h$a;
    .registers 3

    .line 121
    sget-object v0, Lcom/startapp/android/publish/ads/video/h$a;->a:Lcom/startapp/android/publish/ads/video/h$a;

    .line 123
    invoke-static {p0}, Lcom/startapp/android/publish/ads/video/h;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 124
    sget-object v0, Lcom/startapp/android/publish/ads/video/h$a;->d:Lcom/startapp/android/publish/ads/video/h$a;

    .line 127
    :cond_a
    const-class v1, Lcom/startapp/android/publish/adsCommon/activities/FullScreenActivity;

    invoke-static {p0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 128
    sget-object v0, Lcom/startapp/android/publish/ads/video/h$a;->c:Lcom/startapp/android/publish/ads/video/h$a;

    .line 131
    :cond_14
    invoke-static {p0}, Lcom/startapp/android/publish/ads/video/h;->d(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 132
    sget-object v0, Lcom/startapp/android/publish/ads/video/h$a;->b:Lcom/startapp/android/publish/ads/video/h$a;

    :cond_1c
    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v0, ".temp"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading video from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartAppWall.VideoUtil"

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 58
    :try_start_1a
    invoke-static {p0, p2}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_97
    .catchall {:try_start_1a .. :try_end_27} :catchall_93

    if-eqz v5, :cond_33

    .line 84
    :try_start_29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 85
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 86
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_32

    :catch_32
    return-object v3

    .line 64
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_97
    .catchall {:try_start_33 .. :try_end_37} :catchall_93

    .line 65
    :try_start_37
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_90
    .catchall {:try_start_37 .. :try_end_3c} :catchall_8c

    const/16 v7, 0x1000

    :try_start_3e
    new-array v7, v7, [B

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_54} :catch_89
    .catchall {:try_start_3e .. :try_end_54} :catchall_86

    .line 71
    :goto_54
    :try_start_54
    invoke-virtual {v6, v7}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_5e

    .line 72
    invoke-virtual {v8, v7, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_54

    .line 75
    :cond_5e
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v7, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_79} :catch_84
    .catchall {:try_start_54 .. :try_end_79} :catchall_d4

    .line 84
    :try_start_79
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 85
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 86
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_82} :catch_82

    :catch_82
    move-object v1, v3

    goto :goto_d3

    :catch_84
    move-exception v3

    goto :goto_9b

    :catchall_86
    move-exception p0

    move-object v8, v1

    goto :goto_d5

    :catch_89
    move-exception v3

    move-object v8, v1

    goto :goto_9b

    :catchall_8c
    move-exception p0

    move-object v6, v1

    move-object v8, v6

    goto :goto_d5

    :catch_90
    move-exception v3

    move-object v6, v1

    goto :goto_9a

    :catchall_93
    move-exception p0

    move-object v6, v1

    move-object v8, v6

    goto :goto_d6

    :catch_97
    move-exception v3

    move-object v5, v1

    move-object v6, v5

    :goto_9a
    move-object v8, v6

    .line 79
    :goto_9b
    :try_start_9b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error downloading video from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_ca
    .catchall {:try_start_9b .. :try_end_ca} :catchall_d4

    .line 84
    :try_start_ca
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 85
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 86
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d3} :catch_d3

    :catch_d3
    :goto_d3
    return-object v1

    :catchall_d4
    move-exception p0

    :goto_d5
    move-object v1, v5

    .line 84
    :goto_d6
    :try_start_d6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 85
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 86
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_df} :catch_df

    .line 87
    :catch_df
    goto :goto_e1

    :goto_e0
    throw p0

    :goto_e1
    goto :goto_e0
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/ads/video/a/a;)V
    .registers 3

    if-eqz p1, :cond_1a

    .line 151
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/a/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-static {p0, v0}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .line 158
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/a;->d()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/cache/g;

    .line 160
    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/g;->b()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v2

    instance-of v2, v2, Lcom/startapp/android/publish/ads/video/e;

    if-eqz v2, :cond_c

    .line 161
    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/g;->b()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/video/e;

    .line 162
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/e;->d()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 163
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/e;->d()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 164
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/e;->d()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "videoErrorsCount"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 4

    .line 177
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->e()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_10

    return v1

    .line 182
    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "videoErrorsCount"

    invoke-static {p0, v2, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->e()I

    move-result v0

    if-lt p0, v0, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 7

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/io/File;J)J

    move-result-wide v0

    const/4 p0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    return p0

    .line 192
    :cond_12
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/n;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    .line 195
    div-long/2addr v0, v4

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_28

    const/4 p0, 0x1

    :cond_28
    return p0
.end method
