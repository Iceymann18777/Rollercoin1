.class public Lcom/startapp/android/publish/ads/video/c/a/a/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Z
    .registers 3

    if-lez p1, :cond_8

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->e:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->f:Ljava/lang/Integer;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/Integer;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public c(Ljava/lang/Integer;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->g:Ljava/lang/Integer;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/Integer;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/Integer;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->j:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .registers 6

    .line 112
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "VASTMediaFile"

    if-eqz v0, :cond_14

    const-string v0, "Validator error: mediaFile type empty"

    .line 113
    invoke-static {v3, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 118
    :cond_14
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->e()Ljava/lang/Integer;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->d()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_47

    if-eqz v4, :cond_47

    .line 120
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_47

    .line 126
    :cond_35
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "Validator error: mediaFile url empty"

    .line 127
    invoke-static {v3, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_45
    const/4 v0, 0x1

    return v0

    :cond_47
    :goto_47
    const-string v0, "Validator error: mediaFile invalid size"

    .line 121
    invoke-static {v3, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFile [url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scalable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maintainAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apiFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
