.class public final Lcom/truenet/android/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truenet/android/b$b;,
        Lcom/truenet/android/b$c;,
        Lcom/truenet/android/b$a;
    }
.end annotation


# static fields
.field static final synthetic a:[La/a/d/e;

.field public static final b:Lcom/truenet/android/b$a;

.field private static final n:Ljava/lang/String;

.field private static final o:La/a/e/b;


# instance fields
.field private c:Landroid/graphics/Bitmap;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truenet/android/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:La/a/c;

.field private final i:La/a/c;

.field private final j:Landroid/content/Context;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/truenet/android/b;

    const/4 v1, 0x2

    new-array v1, v1, [La/a/d/e;

    new-instance v2, La/a/b/b/l;

    invoke-static {v0}, La/a/b/b/n;->a(Ljava/lang/Class;)La/a/d/b;

    move-result-object v3

    const-string v4, "queue"

    const-string v5, "getQueue()Ljava/util/concurrent/SynchronousQueue;"

    invoke-direct {v2, v3, v4, v5}, La/a/b/b/l;-><init>(La/a/d/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, La/a/b/b/n;->a(La/a/b/b/k;)La/a/d/f;

    move-result-object v2

    check-cast v2, La/a/d/e;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, La/a/b/b/l;

    invoke-static {v0}, La/a/b/b/n;->a(Ljava/lang/Class;)La/a/d/b;

    move-result-object v0

    const-string v3, "webView"

    const-string v4, "getWebView()Landroid/webkit/WebView;"

    invoke-direct {v2, v0, v3, v4}, La/a/b/b/l;-><init>(La/a/d/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, La/a/b/b/n;->a(La/a/b/b/k;)La/a/d/f;

    move-result-object v0

    check-cast v0, La/a/d/e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/truenet/android/b;->a:[La/a/d/e;

    new-instance v0, Lcom/truenet/android/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truenet/android/b$a;-><init>(La/a/b/b/e;)V

    sput-object v0, Lcom/truenet/android/b;->b:Lcom/truenet/android/b$a;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/truenet/android/b;->n:Ljava/lang/String;

    .line 74
    new-instance v0, La/a/e/b;

    const-string v1, "^\\w+(://){1}.+$"

    invoke-direct {v0, v1}, La/a/e/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/truenet/android/b;->o:La/a/e/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truenet/android/b;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/truenet/android/b;->k:Ljava/lang/String;

    iput p3, p0, Lcom/truenet/android/b;->l:I

    iput-wide p4, p0, Lcom/truenet/android/b;->m:J

    .line 46
    iput-object p2, p0, Lcom/truenet/android/b;->e:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    .line 52
    sget-object p1, Lcom/truenet/android/b$f;->a:Lcom/truenet/android/b$f;

    check-cast p1, La/a/b/a/a;

    invoke-static {p1}, La/a/d;->a(La/a/b/a/a;)La/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/truenet/android/b;->h:La/a/c;

    .line 53
    new-instance p1, Lcom/truenet/android/b$g;

    invoke-direct {p1, p0}, Lcom/truenet/android/b$g;-><init>(Lcom/truenet/android/b;)V

    check-cast p1, La/a/b/a/a;

    invoke-static {p1}, La/a/d;->a(La/a/b/a/a;)La/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/truenet/android/b;->i:La/a/c;

    return-void
.end method

.method static bridge synthetic a(Lcom/truenet/android/b;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/truenet/android/b$b;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 94
    check-cast p2, Ljava/util/List;

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/truenet/android/b;->a(Ljava/lang/String;Ljava/util/List;)Lcom/truenet/android/b$b;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/util/List;)Lcom/truenet/android/b$b;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/truenet/android/b$b;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    const-string v0, "nextUrl"

    const/4 v14, 0x0

    .line 95
    move-object v1, v14

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/truenet/android/b;->f:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/truenet/android/b;->b:Lcom/truenet/android/b$a;

    invoke-static {v1, v5}, Lcom/truenet/android/b$a;->a(Lcom/truenet/android/b$a;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 98
    new-instance v0, Lcom/truenet/android/b$b;

    const-wide/16 v9, 0x0

    const/16 v11, 0xc8

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v13}, Lcom/truenet/android/b$b;-><init>(Ljava/lang/String;JILjava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_23
    move-object v1, v14

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 104
    :try_start_26
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    if-eqz v1, :cond_1af

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v15, 0x0

    .line 106
    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 107
    iget-wide v2, v6, Lcom/truenet/android/b;->m:J

    long-to-int v3, v2

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 108
    iget-wide v2, v6, Lcom/truenet/android/b;->m:J

    long-to-int v3, v2

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "User-Agent"

    .line 109
    sget-object v3, Lcom/truenet/android/a/i;->a:Lcom/truenet/android/a/i$a;

    iget-object v7, v6, Lcom/truenet/android/b;->j:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/truenet/android/a/i$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9b

    const-string v2, "Cookie"

    const-string v3, ";"

    .line 113
    check-cast v3, Ljava/lang/CharSequence;

    .line 114
    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Iterable;

    .line 262
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, La/a/a/g;->a(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 263
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_71
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_90

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 264
    check-cast v9, Ljava/lang/String;

    .line 114
    invoke-static {v9}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    const-string v10, "HttpCookie.parse(it)"

    invoke-static {v9, v10}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, La/a/a/g;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/HttpCookie;

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 265
    :cond_90
    check-cast v8, Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    .line 113
    invoke-static {v3, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_9b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 118
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v2

    const-string v7, "Location"

    .line 120
    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_fe

    .line 123
    sget-object v8, Lcom/truenet/android/b;->o:La/a/e/b;

    invoke-static {v7, v0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v7

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, La/a/e/b;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_bf

    goto :goto_fc

    .line 124
    :cond_bf
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "://"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "/"

    const/4 v11, 0x2

    invoke-static {v7, v0, v15, v11, v14}, La/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    goto :goto_f5

    :cond_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x2f

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_f5
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_fc
    move-object v13, v7

    goto :goto_ff

    :cond_fe
    move-object v13, v14

    .line 127
    :goto_ff
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string v7, "Set-Cookie"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 128
    new-instance v16, Lcom/truenet/android/b$b;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    move-object/from16 v7, v16

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v13}, Lcom/truenet/android/b$b;-><init>(Ljava/lang/String;JILjava/util/List;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v7, 0x12b

    const/16 v8, 0xc8

    if-le v8, v0, :cond_124

    goto :goto_192

    :cond_124
    if-lt v7, v0, :cond_192

    .line 132
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v7, "inputStream"

    invoke-static {v0, v7}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/truenet/android/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/truenet/android/b;->f:Ljava/lang/String;

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v18, v7, v2

    .line 135
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/truenet/android/b$e;

    move-object v0, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/truenet/android/b$e;-><init>(Ljava/net/HttpURLConnection;Lcom/truenet/android/b;Ljava/util/List;Ljava/net/URL;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/truenet/android/b;->j()Ljava/util/concurrent/SynchronousQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "jsRedirectUrl"

    .line 140
    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_16e

    const/4 v15, 0x1

    :cond_16e
    if-eqz v15, :cond_181

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1d

    const/16 v24, 0x0

    .line 141
    invoke-static/range {v16 .. v24}, Lcom/truenet/android/b$b;->a(Lcom/truenet/android/b$b;Ljava/lang/String;JILjava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/truenet/android/b$b;

    move-result-object v0

    return-object v0

    :cond_181
    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xd

    const/16 v24, 0x0

    move-object/from16 v22, v0

    .line 142
    invoke-static/range {v16 .. v24}, Lcom/truenet/android/b$b;->a(Lcom/truenet/android/b$b;Ljava/lang/String;JILjava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/truenet/android/b$b;

    move-result-object v0

    return-object v0

    :cond_192
    :goto_192
    const/16 v1, 0x18f

    const/16 v2, 0x12c

    if-le v2, v0, :cond_199

    goto :goto_19c

    :cond_199
    if-lt v1, v0, :cond_19c

    return-object v16

    :cond_19c
    :goto_19c
    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xf

    const/16 v24, 0x0

    .line 145
    invoke-static/range {v16 .. v24}, Lcom/truenet/android/b$b;->a(Lcom/truenet/android/b$b;Ljava/lang/String;JILjava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/truenet/android/b$b;

    move-result-object v0

    return-object v0

    .line 105
    :cond_1af
    new-instance v0, La/a/h;

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v0, v1}, La/a/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b7
    .catchall {:try_start_26 .. :try_end_1b7} :catchall_1b7

    :catchall_1b7
    return-object v14
.end method

.method private final a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9

    const-string v0, "stream closed with error!"

    const/4 v1, 0x0

    .line 158
    move-object v2, v1

    check-cast v2, Ljava/io/BufferedInputStream;

    .line 159
    new-instance v3, La/a/b/b/m$a;

    invoke-direct {v3}, La/a/b/b/m$a;-><init>()V

    move-object v4, v1

    check-cast v4, Ljava/io/BufferedReader;

    iput-object v4, v3, La/a/b/b/m$a;->element:Ljava/lang/Object;

    .line 161
    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_6f

    .line 163
    :try_start_1a
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    move-object v6, v5

    check-cast v6, Ljava/io/InputStream;

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Reader;

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, v3, La/a/b/b/m$a;->element:Ljava/lang/Object;

    .line 164
    new-instance p1, La/a/b/b/m$a;

    invoke-direct {p1}, La/a/b/b/m$a;-><init>()V

    check-cast v1, Ljava/lang/String;

    iput-object v1, p1, La/a/b/b/m$a;->element:Ljava/lang/Object;

    .line 165
    :goto_34
    new-instance v1, Lcom/truenet/android/b$d;

    invoke-direct {v1, p1, v3}, Lcom/truenet/android/b$d;-><init>(La/a/b/b/m$a;La/a/b/b/m$a;)V

    check-cast v1, La/a/b/a/a;

    invoke-interface {v1}, La/a/b/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 166
    iget-object v1, p1, La/a/b/b/m$a;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 168
    :cond_49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "result.toString()"

    invoke-static {p1, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_1a .. :try_end_52} :catchall_6c

    .line 171
    :try_start_52
    iget-object v1, v3, La/a/b/b/m$a;->element:Ljava/lang/Object;

    check-cast v1, Ljava/io/BufferedReader;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 172
    :cond_5b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5f

    goto :goto_6b

    :catchall_5f
    move-exception v1

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6b
    return-object p1

    :catchall_6c
    move-exception p1

    move-object v2, v5

    goto :goto_70

    :catchall_6f
    move-exception p1

    .line 171
    :goto_70
    :try_start_70
    iget-object v1, v3, La/a/b/b/m$a;->element:Ljava/lang/Object;

    check-cast v1, Ljava/io/BufferedReader;

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_79
    if-eqz v2, :cond_8b

    .line 172
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_7f

    goto :goto_8b

    :catchall_7f
    move-exception v1

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_8b
    :goto_8b
    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method

.method public static final synthetic a(Lcom/truenet/android/b;)Ljava/util/concurrent/SynchronousQueue;
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/truenet/android/b;->j()Ljava/util/concurrent/SynchronousQueue;

    move-result-object p0

    return-object p0
.end method

.method private final a(J)Z
    .registers 7

    .line 212
    iget-object v0, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/truenet/android/b;->l:I

    if-lt v0, v1, :cond_d

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1f

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/truenet/android/b;->m:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long p1, p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method public static final synthetic b(Lcom/truenet/android/b;)Landroid/webkit/WebView;
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/truenet/android/b;->k()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/truenet/android/b;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/truenet/android/b;->j:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic h()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lcom/truenet/android/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic i()La/a/e/b;
    .registers 1

    .line 35
    sget-object v0, Lcom/truenet/android/b;->o:La/a/e/b;

    return-object v0
.end method

.method private final j()Ljava/util/concurrent/SynchronousQueue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/SynchronousQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truenet/android/b;->h:La/a/c;

    sget-object v1, Lcom/truenet/android/b;->a:[La/a/d/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, La/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/SynchronousQueue;

    return-object v0
.end method

.method private final k()Landroid/webkit/WebView;
    .registers 4

    iget-object v0, p0, Lcom/truenet/android/b;->i:La/a/c;

    sget-object v1, Lcom/truenet/android/b;->a:[La/a/d/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, La/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/truenet/android/b;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/truenet/android/b;->d:J

    return-wide v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truenet/android/b$b;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, La/a/a/g;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/truenet/android/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/truenet/android/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .registers 8

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lcom/truenet/android/b;->k:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/truenet/android/b;->a(Lcom/truenet/android/b;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/truenet/android/b$b;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 183
    iget-object v4, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_13
    if-eqz v2, :cond_1a

    .line 186
    invoke-virtual {v2}, Lcom/truenet/android/b$b;->e()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_1a
    move-object v4, v3

    :goto_1b
    if-eqz v4, :cond_3c

    invoke-direct {p0, v0, v1}, Lcom/truenet/android/b;->a(J)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 187
    invoke-virtual {v2}, Lcom/truenet/android/b$b;->e()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2c

    invoke-static {}, La/a/b/b/h;->a()V

    :cond_2c
    invoke-virtual {v2}, Lcom/truenet/android/b$b;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/truenet/android/b;->a(Ljava/lang/String;Ljava/util/List;)Lcom/truenet/android/b$b;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 189
    iget-object v4, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3c
    if-eqz v2, :cond_5b

    const/16 v4, 0x12b

    const/16 v5, 0xc8

    .line 194
    invoke-virtual {v2}, Lcom/truenet/android/b$b;->c()I

    move-result v2

    if-le v5, v2, :cond_49

    goto :goto_5b

    :cond_49
    if-lt v4, v2, :cond_5b

    iget-object v2, p0, Lcom/truenet/android/b;->f:Ljava/lang/String;

    if-eqz v2, :cond_5b

    .line 195
    invoke-direct {p0}, Lcom/truenet/android/b;->k()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-static {v2}, Lcom/truenet/android/a/j;->a(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_59
    iput-object v3, p0, Lcom/truenet/android/b;->c:Landroid/graphics/Bitmap;

    .line 199
    :cond_5b
    :goto_5b
    iget-object v2, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    const-wide/16 v3, 0x0

    .line 267
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 268
    check-cast v5, Lcom/truenet/android/b$b;

    .line 200
    invoke-virtual {v5}, Lcom/truenet/android/b$b;->b()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_65

    .line 270
    :cond_77
    iput-wide v3, p0, Lcom/truenet/android/b;->d:J

    .line 203
    iget-object v2, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    invoke-static {v2}, La/a/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truenet/android/b$b;

    invoke-virtual {v2}, Lcom/truenet/android/b$b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/truenet/android/b;->e:Ljava/lang/String;

    .line 206
    :cond_87
    iget-object v2, p0, Lcom/truenet/android/b;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/truenet/android/b;->d:J

    :cond_96
    return-void
.end method
