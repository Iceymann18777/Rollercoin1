.class public Lcom/startapp/android/publish/ads/video/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Lcom/startapp/android/publish/ads/video/d;


# instance fields
.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/startapp/android/publish/cache/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/startapp/android/publish/ads/video/d;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/video/d;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/ads/video/d;->a:Lcom/startapp/android/publish/ads/video/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()Lcom/startapp/android/publish/ads/video/d;
    .registers 1

    .line 155
    sget-object v0, Lcom/startapp/android/publish/ads/video/d;->a:Lcom/startapp/android/publish/ads/video/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_2e

    .line 140
    const-class v0, Ljava/util/LinkedList;

    const-string v1, "CachedAds"

    invoke-static {p1, v1, v0}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_19

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    .line 144
    :cond_19
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 145
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/d;->b(Landroid/content/Context;)V

    :cond_2e
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/d;Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V
    .registers 5

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startapp/android/publish/ads/video/d;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    const-string v1, "CachedAds"

    invoke-static {p1, v1, v0}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V
    .registers 16

    const-string v0, "_"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoAdCacheManager"

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/d;->a(Landroid/content/Context;)V

    const/4 v1, 0x6

    .line 56
    :try_start_1d
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3f
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_3f} :catch_b0

    const/16 v4, 0x2e

    .line 59
    :try_start_41
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/String;

    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v6, "[^a-zA-Z0-9]+"

    invoke-virtual {v9, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_7e} :catch_80
    .catch Ljava/net/MalformedURLException; {:try_start_41 .. :try_end_7e} :catch_b0

    move-object v6, v0

    goto :goto_96

    :catch_80
    move-exception v0

    .line 63
    :try_start_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error applying MD5 digest to filename "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    .line 65
    :goto_96
    new-instance v0, Lcom/startapp/android/publish/cache/h;

    invoke-direct {v0, v6}, Lcom/startapp/android/publish/cache/h;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v7, Lcom/startapp/android/publish/ads/video/d$2;

    invoke-direct {v7, p0, p3, v0, p1}, Lcom/startapp/android/publish/ads/video/d$2;-><init>(Lcom/startapp/android/publish/ads/video/d;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/cache/h;Landroid/content/Context;)V

    .line 79
    new-instance v8, Lcom/startapp/android/publish/ads/video/d$3;

    invoke-direct {v8, p0, p4}, Lcom/startapp/android/publish/ads/video/d$3;-><init>(Lcom/startapp/android/publish/ads/video/d;Lcom/startapp/android/publish/ads/video/c$a;)V

    .line 88
    new-instance p4, Lcom/startapp/android/publish/ads/video/g;

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/startapp/android/publish/ads/video/g;-><init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V

    invoke-virtual {p4}, Lcom/startapp/android/publish/ads/video/g;->a()V
    :try_end_af
    .catch Ljava/net/MalformedURLException; {:try_start_81 .. :try_end_af} :catch_b0

    goto :goto_cb

    :catch_b0
    move-exception p1

    .line 90
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Malformed url "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_cb

    const/4 p1, 0x0

    .line 92
    invoke-interface {p3, p1}, Lcom/startapp/android/publish/ads/video/g$a;->a(Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/startapp/android/publish/cache/h;)V
    .registers 7

    .line 118
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "VideoAdCacheManager"

    if-eqz v0, :cond_36

    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cachedVideoAds already contained "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/startapp/android/publish/cache/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - removed. Size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    :cond_36
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/d;->a(I)Z

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/d;->b(Landroid/content/Context;)V

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/startapp/android/publish/cache/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to cachedVideoAds. Size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V
    .registers 13

    .line 36
    sget-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v7, Lcom/startapp/android/publish/ads/video/d$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/startapp/android/publish/ads/video/d$1;-><init>(Lcom/startapp/android/publish/ads/video/d;Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V

    invoke-static {v0, v7}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)Z
    .registers 8

    .line 100
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, p1, :cond_6d

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/cache/h;

    .line 103
    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/android/publish/ads/video/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v1, 0x1

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 106
    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/h;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 107
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v3, 0x3

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cachedVideoAds reached the maximum of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " videos - removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Size = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VideoAdCacheManager"

    invoke-static {v4, v3, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    :cond_6d
    return v1
.end method
