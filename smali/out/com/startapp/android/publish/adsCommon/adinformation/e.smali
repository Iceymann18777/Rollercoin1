.class public Lcom/startapp/android/publish/adsCommon/adinformation/e;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient a:Landroid/graphics/Bitmap;

.field private transient b:Landroid/graphics/Bitmap;

.field private transient c:Landroid/graphics/Bitmap;

.field private height:I

.field private imageFallbackUrl:Ljava/lang/String;

.field private imageUrlSecured:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->imageUrlSecured:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->imageFallbackUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->c:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->width:I

    .line 30
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->height:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/adinformation/e;
    .registers 2

    .line 132
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adinformation/e;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/e;-><init>()V

    .line 134
    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->b(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 44
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 47
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->c:Landroid/graphics/Bitmap;

    .line 51
    :cond_12
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->name:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->width:I

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_6

    .line 103
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->c:Landroid/graphics/Bitmap;

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->imageFallbackUrl:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->width:I

    return v0
.end method

.method protected b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    .line 125
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->b:Landroid/graphics/Bitmap;

    .line 127
    :cond_e
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public b(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->height:I

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->name:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->height:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->imageUrlSecured:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method protected e()V
    .registers 5

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->a(Landroid/graphics/Bitmap;)V

    .line 84
    new-instance v0, Lcom/startapp/common/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/adsCommon/adinformation/e$1;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/adsCommon/adinformation/e$1;-><init>(Lcom/startapp/android/publish/adsCommon/adinformation/e;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/common/a;-><init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V

    .line 89
    invoke-virtual {v0}, Lcom/startapp/common/a;->a()V

    return-void
.end method

.method protected f()Landroid/graphics/Bitmap;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/e;->imageFallbackUrl:Ljava/lang/String;

    return-object v0
.end method
