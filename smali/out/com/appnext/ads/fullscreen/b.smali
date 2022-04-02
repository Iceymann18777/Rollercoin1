.class public final Lcom/appnext/ads/fullscreen/b;
.super Lcom/appnext/core/d;
.source "SourceFile"


# static fields
.field private static aL:Lcom/appnext/ads/fullscreen/b;


# instance fields
.field private final aM:I

.field private aN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/appnext/core/Ad;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/appnext/core/d;-><init>()V

    const/16 v0, 0x1e

    .line 39
    iput v0, p0, Lcom/appnext/ads/fullscreen/b;->aM:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/b;->aN:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/appnext/core/AppnextAd;)I
    .registers 4

    .line 350
    new-instance v0, Lcom/appnext/ads/fullscreen/FullscreenAd;

    invoke-direct {v0, p1}, Lcom/appnext/ads/fullscreen/FullscreenAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 351
    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object p1

    const-string v1, "new"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getAdPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p0, 0x1

    return p0

    .line 353
    :cond_1d
    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object p1

    const-string v1, "existing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getAdPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_35

    const/4 p0, 0x2

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/content/Context;Lcom/appnext/core/Ad;)V
    .registers 5

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/data/appnext/videos/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 194
    new-instance v0, Lcom/appnext/ads/fullscreen/b$1;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/b$1;-><init>(Lcom/appnext/ads/fullscreen/b;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 201
    invoke-static {}, Lcom/appnext/ads/fullscreen/Video;->getCacheVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 202
    instance-of p2, p2, Lcom/appnext/ads/fullscreen/FullScreenVideo;
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_64

    const-string v0, "num_saved_videos"

    if-eqz p2, :cond_44

    .line 203
    :try_start_37
    invoke-static {}, Lcom/appnext/ads/fullscreen/c;->m()Lcom/appnext/ads/fullscreen/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/appnext/ads/fullscreen/c;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_50

    .line 205
    :cond_44
    invoke-static {}, Lcom/appnext/ads/fullscreen/f;->q()Lcom/appnext/ads/fullscreen/f;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/appnext/ads/fullscreen/f;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_50
    add-int/lit8 p2, p2, -0x1

    goto :goto_54

    :cond_53
    const/4 p2, 0x0

    .line 210
    :goto_54
    array-length v0, p1

    if-gt v0, p2, :cond_58

    return-void

    .line 213
    :cond_58
    :goto_58
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v1, v0, :cond_64

    .line 215
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_61
    .catchall {:try_start_37 .. :try_end_61} :catchall_64

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :catchall_64
    :cond_64
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/AppnextAd;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 137
    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 138
    :cond_13
    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getWideImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 139
    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getWideImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 141
    :cond_24
    move-object v0, p2

    check-cast v0, Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getVideoLength()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/appnext/ads/fullscreen/b;->getVideoUrl(Lcom/appnext/core/AppnextAd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 143
    invoke-static {p3}, Lcom/appnext/ads/fullscreen/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {}, Lcom/appnext/ads/fullscreen/Video;->getCacheVideo()Z

    move-result v2

    const-string v3, "/data/appnext/videos/"

    if-eqz v2, :cond_53

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_79

    .line 148
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tmp/vid"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    :goto_79
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " exists"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/b;->aN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 158
    :cond_b5
    invoke-static {}, Lcom/appnext/ads/fullscreen/Video;->isStreamingModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_bc

    return-void

    .line 162
    :cond_bc
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 164
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    .line 166
    invoke-virtual {p3}, Ljava/net/URLConnection;->connect()V

    .line 168
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {p3, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 169
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [B

    .line 171
    :goto_f6
    invoke-virtual {p3, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_102

    const/4 v6, 0x0

    .line 172
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_f6

    .line 174
    :cond_102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloaded "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 177
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 178
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 180
    new-instance p3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 184
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 186
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/b;->aN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/appnext/core/AppnextAd;)I
    .registers 5

    .line 359
    new-instance v0, Lcom/appnext/ads/fullscreen/FullscreenAd;

    invoke-direct {v0, p1}, Lcom/appnext/ads/fullscreen/FullscreenAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 360
    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getCptList()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3f

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getCptList()Ljava/lang/String;

    move-result-object p1

    const-string v2, "[]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_3f

    .line 364
    :cond_1f
    :try_start_1f
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getCptList()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 365
    :goto_29
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 366
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {p0, v2}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_37} :catch_3f

    if-eqz v2, :cond_3a

    return v1

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3d
    const/4 p0, 0x3

    return p0

    :catch_3f
    :cond_3f
    :goto_3f
    return v1
.end method

.method private static b(Lcom/appnext/core/AppnextAd;)Z
    .registers 3

    .line 309
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method protected static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "/"

    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "rnd"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5b

    const-string v1, ""

    .line 385
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_5b

    move-object v0, p0

    :catchall_5b
    :cond_5b
    return-object v0
.end method

.method private e(Lcom/appnext/core/Ad;)Z
    .registers 3

    .line 293
    invoke-static {}, Lcom/appnext/ads/fullscreen/Video;->isStreamingModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 295
    :cond_8
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/b;->aN:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return p1

    .line 299
    :cond_12
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/b;->aN:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method protected static getVideoUrl(Lcom/appnext/core/AppnextAd;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "30"

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_19

    .line 238
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 242
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 247
    :cond_19
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 251
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_27
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning video url for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with len: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " url: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static declared-synchronized j()Lcom/appnext/ads/fullscreen/b;
    .registers 2

    const-class v0, Lcom/appnext/ads/fullscreen/b;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/appnext/ads/fullscreen/b;->aL:Lcom/appnext/ads/fullscreen/b;

    if-nez v1, :cond_e

    .line 45
    new-instance v1, Lcom/appnext/ads/fullscreen/b;

    invoke-direct {v1}, Lcom/appnext/ads/fullscreen/b;-><init>()V

    sput-object v1, Lcom/appnext/ads/fullscreen/b;->aL:Lcom/appnext/ads/fullscreen/b;

    .line 47
    :cond_e
    sget-object v1, Lcom/appnext/ads/fullscreen/b;->aL:Lcom/appnext/ads/fullscreen/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/appnext/core/g;)I
    .registers 7

    .line 82
    check-cast p2, Lcom/appnext/core/AppnextAd;

    .line 1350
    new-instance v0, Lcom/appnext/ads/fullscreen/FullscreenAd;

    invoke-direct {v0, p2}, Lcom/appnext/ads/fullscreen/FullscreenAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 1351
    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getAdPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    goto :goto_39

    .line 1353
    :cond_20
    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object v1

    const-string v3, "existing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getAdPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x2

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 83
    :goto_39
    invoke-static {p1, p2}, Lcom/appnext/ads/fullscreen/b;->b(Landroid/content/Context;Lcom/appnext/core/AppnextAd;)I

    move-result p1

    if-nez v0, :cond_42

    if-nez p1, :cond_42

    return v2

    :cond_42
    if-eqz v0, :cond_45

    return v0

    :cond_45
    return p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;
    .registers 6

    .line 325
    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/b;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 328
    :cond_8
    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/b;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    .line 332
    :cond_13
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appnext/core/AppnextAd;"
        }
    .end annotation

    .line 336
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appnext/core/AppnextAd;

    .line 337
    invoke-static {p3}, Lcom/appnext/ads/fullscreen/b;->b(Lcom/appnext/core/AppnextAd;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appnext/ads/fullscreen/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p3

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "&auid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object p3

    goto :goto_10

    :cond_e
    const-string p3, "700"

    :goto_10
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&vidmin="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    if-nez p2, :cond_1e

    move-object p4, p3

    goto :goto_26

    :cond_1e
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_26
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "&vidmax="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_31

    goto :goto_39

    .line 57
    :cond_31
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_39
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2191
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/data/appnext/videos/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2192
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    .line 2194
    new-instance v0, Lcom/appnext/ads/fullscreen/b$1;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/b$1;-><init>(Lcom/appnext/ads/fullscreen/b;)V

    invoke-static {p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2201
    invoke-static {}, Lcom/appnext/ads/fullscreen/Video;->getCacheVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 2202
    instance-of v0, p2, Lcom/appnext/ads/fullscreen/FullScreenVideo;
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_64

    const-string v2, "num_saved_videos"

    if-eqz v0, :cond_44

    .line 2203
    :try_start_37
    invoke-static {}, Lcom/appnext/ads/fullscreen/c;->m()Lcom/appnext/ads/fullscreen/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appnext/ads/fullscreen/c;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_50

    .line 2205
    :cond_44
    invoke-static {}, Lcom/appnext/ads/fullscreen/f;->q()Lcom/appnext/ads/fullscreen/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appnext/ads/fullscreen/f;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    .line 2210
    :goto_54
    array-length v2, p3

    if-gt v2, v0, :cond_58

    goto :goto_64

    .line 2213
    :cond_58
    :goto_58
    array-length v2, p3

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_64

    .line 2215
    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_61
    .catchall {:try_start_37 .. :try_end_61} :catchall_64

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :catchall_64
    :cond_64
    :goto_64
    const/4 p3, 0x0

    .line 107
    :try_start_65
    invoke-virtual {p0, p1, p2}, Lcom/appnext/ads/fullscreen/b;->b(Landroid/content/Context;Lcom/appnext/core/Ad;)Lcom/appnext/core/AppnextAd;

    move-result-object p3

    if-eqz p3, :cond_a2

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/AppnextAd;)V

    .line 114
    instance-of v0, p2, Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v0, :cond_a1

    .line 115
    move-object v0, p2

    check-cast v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 117
    invoke-static {}, Lcom/appnext/ads/fullscreen/f;->q()Lcom/appnext/ads/fullscreen/f;

    move-result-object v0

    const-string v1, "default_mode"

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/f;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8b
    const-string v1, "multi"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 119
    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object p3

    if-nez p3, :cond_9e

    return-void

    .line 122
    :cond_9e
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/AppnextAd;)V

    :cond_a1
    return-void

    .line 110
    :cond_a2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No video ads"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_aa
    .catchall {:try_start_65 .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception p1

    if-eqz p3, :cond_b4

    .line 128
    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/appnext/ads/fullscreen/b;->a(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    .line 130
    :cond_b4
    goto :goto_b6

    :goto_b5
    throw p1

    :goto_b6
    goto :goto_b5
.end method

.method protected final a(Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    if-eqz p1, :cond_1e

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/appnext/core/Ad;->getVID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object v2

    const-string v5, "caching_error"

    const-string v6, "sdk"

    const-string v7, ""

    const-string v8, ""

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v8}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_1e
    const-string v9, "300"

    const-string v10, "2.5.1.472"

    const-string v11, "700"

    const-string v14, "caching_error"

    const-string v15, "sdk"

    const-string v16, ""

    const-string v17, ""

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    .line 226
    invoke-static/range {v9 .. v17}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/appnext/core/Ad;)V
    .registers 3

    .line 261
    invoke-super {p0, p1, p2}, Lcom/appnext/core/d;->a(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    .line 262
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/b;->aN:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 263
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/b;->aN:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/appnext/core/Ad;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/appnext/core/Ad;",
            "TT;)V"
        }
    .end annotation

    .line 232
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getVID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getSessionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cache_ready"

    const-string v6, "sdk"

    const-string v7, ""

    const-string v8, ""

    move-object v3, p1

    invoke-static/range {v0 .. v8}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/util/ArrayList<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, ""

    .line 98
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method protected final a(Lcom/appnext/core/Ad;)Z
    .registers 3

    .line 93
    invoke-super {p0, p1}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/b;->e(Lcom/appnext/core/Ad;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method protected final b(Landroid/content/Context;Lcom/appnext/core/Ad;)Lcom/appnext/core/AppnextAd;
    .registers 4

    const-string v0, ""

    .line 321
    invoke-virtual {p0, p1, p2, v0}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    return-object p1
.end method

.method protected final b(Lcom/appnext/core/Ad;)Z
    .registers 8

    const/4 v0, 0x0

    .line 268
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/b;->h(Lcom/appnext/core/Ad;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 269
    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/b;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/a;->aU()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/b;->j(Lcom/appnext/core/Ad;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2c

    .line 270
    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/b;->e(Lcom/appnext/core/Ad;)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2c

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    return p1

    :catchall_2c
    :cond_2c
    return v0
.end method

.method protected final c(Lcom/appnext/core/Ad;)Lcom/appnext/core/p;
    .registers 2

    .line 280
    instance-of p1, p1, Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/appnext/ads/fullscreen/f;->q()Lcom/appnext/ads/fullscreen/f;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-static {}, Lcom/appnext/ads/fullscreen/c;->m()Lcom/appnext/ads/fullscreen/c;

    move-result-object p1

    return-object p1
.end method

.method protected final d(Lcom/appnext/core/Ad;)Z
    .registers 4

    const/4 v0, 0x0

    .line 285
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/b;->a(Lcom/appnext/core/Ad;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/b;->e(Lcom/appnext/core/Ad;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :catchall_f
    :cond_f
    return v0
.end method

.method protected final f(Lcom/appnext/core/Ad;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/core/Ad;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 346
    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/b;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
