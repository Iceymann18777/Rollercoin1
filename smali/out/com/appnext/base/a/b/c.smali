.class public Lcom/appnext/base/a/b/c;
.super Lcom/appnext/base/a/b/d;
.source "SourceFile"


# instance fields
.field private dK:Ljava/lang/String;

.field private dL:Ljava/lang/String;

.field private dM:Ljava/lang/String;

.field private dN:Ljava/lang/String;

.field private dO:Ljava/lang/String;

.field private dP:Ljava/lang/String;

.field private dQ:Ljava/lang/String;

.field private dR:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 22
    invoke-direct {p0}, Lcom/appnext/base/a/b/d;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/appnext/base/a/b/c;->dK:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/appnext/base/a/b/c;->dL:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/appnext/base/a/b/c;->dM:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/appnext/base/a/b/c;->dN:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/appnext/base/a/b/c;->dO:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/appnext/base/a/b/c;->dP:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/appnext/base/a/b/c;->dQ:Ljava/lang/String;

    .line 30
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1b

    .line 31
    iput-object p2, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    return-void

    .line 34
    :cond_1b
    :try_start_1b
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    return-void

    .line 36
    :catchall_23
    iput-object p2, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    return-void
.end method

.method private p(Ljava/lang/String;)Z
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x1

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .registers 4

    .line 112
    invoke-direct {p0, p1}, Lcom/appnext/base/a/b/c;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return p2

    .line 117
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    return p1

    :catchall_e
    return p2
.end method

.method public final a(Ljava/lang/String;J)J
    .registers 6

    .line 98
    invoke-direct {p0, p1}, Lcom/appnext/base/a/b/c;->p(Ljava/lang/String;)Z

    move-result p2

    const-wide/16 v0, 0x1

    if-nez p2, :cond_9

    return-wide v0

    .line 103
    :cond_9
    :try_start_9
    iget-object p2, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    return-wide p1

    :catchall_10
    return-wide v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .registers 4

    .line 126
    invoke-direct {p0, p1}, Lcom/appnext/base/a/b/c;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return p2

    .line 131
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    return p1

    :catchall_e
    return p2
.end method

.method public final ak()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dK:Ljava/lang/String;

    return-object v0
.end method

.method public final al()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dL:Ljava/lang/String;

    return-object v0
.end method

.method public final am()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dM:Ljava/lang/String;

    return-object v0
.end method

.method public final an()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dN:Ljava/lang/String;

    return-object v0
.end method

.method public final ao()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dO:Ljava/lang/String;

    return-object v0
.end method

.method public final ap()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dQ:Ljava/lang/String;

    return-object v0
.end method

.method public final aq()Lorg/json/JSONObject;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 84
    invoke-direct {p0, p1}, Lcom/appnext/base/a/b/c;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p2

    .line 89
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dR:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    return-object p1

    :catchall_e
    return-object p2
.end method

.method public final getKey()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/appnext/base/a/b/c;->dP:Ljava/lang/String;

    return-object v0
.end method
