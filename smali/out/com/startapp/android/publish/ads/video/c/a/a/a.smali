.class public Lcom/startapp/android/publish/ads/video/c/a/a/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Z
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->b:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/Integer;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public b(Ljava/lang/Integer;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->c:Ljava/lang/Integer;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/Integer;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public c(Ljava/lang/Integer;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->d:Ljava/lang/Integer;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->k:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/Integer;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public d(Ljava/lang/Integer;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->e:Ljava/lang/Integer;

    return-void
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/d;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->j:Ljava/util/List;

    if-nez v0, :cond_b

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->j:Ljava/util/List;

    .line 107
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->j:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/Integer;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->f:Ljava/lang/Integer;

    return-void
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->l:Ljava/util/List;

    if-nez v0, :cond_b

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->l:Ljava/util/List;

    .line 122
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->l:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/lang/Integer;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->g:Ljava/lang/Integer;

    return-void
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->m:Ljava/util/List;

    if-nez v0, :cond_b

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->m:Ljava/util/List;

    .line 129
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->m:Ljava/util/List;

    return-object v0
.end method

.method public g(Ljava/lang/Integer;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/a;->i:Ljava/lang/Integer;

    return-void
.end method

.method public h()Z
    .registers 6

    .line 133
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->b()Ljava/lang/Integer;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->a()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "VASTIcon"

    if-eqz v0, :cond_5e

    if-eqz v1, :cond_5e

    .line 135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_5e

    .line 140
    :cond_25
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->c()Ljava/lang/Integer;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->d()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_58

    if-eqz v1, :cond_58

    .line 142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_58

    .line 147
    :cond_46
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "Validator error: VASTIcon no resources"

    .line 148
    invoke-static {v4, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_56
    const/4 v0, 0x1

    return v0

    :cond_58
    :goto_58
    const-string v0, "Validator error: VASTIcon invalid position"

    .line 143
    invoke-static {v4, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5e
    :goto_5e
    const-string v0, "Validator error: VASTIcon invalid size"

    .line 136
    invoke-static {v4, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method
