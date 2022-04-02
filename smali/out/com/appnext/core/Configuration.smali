.class public abstract Lcom/appnext/core/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public backButtonCanClose:Ljava/lang/Boolean;

.field public categories:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public maxVideoLength:I

.field public minVideoLength:I

.field public mute:Ljava/lang/Boolean;

.field public orientation:Ljava/lang/String;

.field public postback:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/appnext/core/Configuration;->categories:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/appnext/core/Configuration;->postback:Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/appnext/core/Configuration;->maxVideoLength:I

    .line 15
    iput v1, p0, Lcom/appnext/core/Configuration;->minVideoLength:I

    const-string v1, "not_set"

    .line 17
    iput-object v1, p0, Lcom/appnext/core/Configuration;->orientation:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/appnext/core/Configuration;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/appnext/core/Configuration;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/appnext/core/Configuration;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxVideoLength()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/appnext/core/Configuration;->maxVideoLength:I

    return v0
.end method

.method public getMinVideoLength()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/appnext/core/Configuration;->minVideoLength:I

    return v0
.end method

.method public getMute()Z
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/appnext/core/Configuration;->mute:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->l()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOrientation()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/appnext/core/Configuration;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public getPostback()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/appnext/core/Configuration;->postback:Ljava/lang/String;

    return-object v0
.end method

.method public isBackButtonCanClose()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/appnext/core/Configuration;->backButtonCanClose:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->l()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "can_close"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected abstract l()Lcom/appnext/core/p;
.end method

.method public setCategories(Ljava/lang/String;)V
    .registers 5

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p1, :cond_7

    move-object p1, v1

    .line 31
    :cond_7
    :try_start_7
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 32
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_16

    :cond_15
    move-object v1, p1

    .line 36
    :catchall_16
    iput-object v1, p0, Lcom/appnext/core/Configuration;->categories:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/appnext/core/Configuration;->language:Ljava/lang/String;

    return-void
.end method

.method public setMaxVideoLength(I)V
    .registers 3

    if-ltz p1, :cond_1c

    if-lez p1, :cond_19

    .line 88
    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->getMinVideoLength()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->getMinVideoLength()I

    move-result v0

    if-lt p1, v0, :cond_11

    goto :goto_19

    .line 89
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max Length cannot be lower than min length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_19
    :goto_19
    iput p1, p0, Lcom/appnext/core/Configuration;->maxVideoLength:I

    return-void

    .line 87
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max Length must be higher than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinVideoLength(I)V
    .registers 3

    if-ltz p1, :cond_1c

    if-lez p1, :cond_19

    .line 101
    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->getMaxVideoLength()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->getMaxVideoLength()I

    move-result v0

    if-gt p1, v0, :cond_11

    goto :goto_19

    .line 102
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min Length cannot be higher than max length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_19
    :goto_19
    iput p1, p0, Lcom/appnext/core/Configuration;->minVideoLength:I

    return-void

    .line 100
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min Length must be higher than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMute(Z)V
    .registers 2

    .line 52
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/Configuration;->mute:Ljava/lang/Boolean;

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_2e

    const-string v0, "automatic"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "not_set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_2b

    .line 78
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong orientation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_2b
    :goto_2b
    iput-object p1, p0, Lcom/appnext/core/Configuration;->orientation:Ljava/lang/String;

    return-void

    .line 73
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "orientation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPostback(Ljava/lang/String;)V
    .registers 5

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p1, :cond_7

    move-object p1, v1

    .line 43
    :cond_7
    :try_start_7
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 44
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_15} :catch_16

    :cond_15
    move-object v1, p1

    .line 48
    :catch_16
    iput-object v1, p0, Lcom/appnext/core/Configuration;->postback:Ljava/lang/String;

    return-void
.end method
