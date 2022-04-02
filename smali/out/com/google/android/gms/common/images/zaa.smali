.class public abstract Lcom/google/android/gms/common/images/zaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"


# instance fields
.field final zaa:Lcom/google/android/gms/common/images/zac;

.field protected zab:I

.field private zac:I

.field private zad:Z

.field private zae:Z

.field private zaf:Z

.field private zag:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/common/images/zaa;->zac:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/common/images/zaa;->zab:I

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/common/images/zaa;->zad:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/common/images/zaa;->zae:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/common/images/zaa;->zaf:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/common/images/zaa;->zag:Z

    .line 8
    new-instance v0, Lcom/google/android/gms/common/images/zac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/zac;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zaa;->zaa:Lcom/google/android/gms/common/images/zac;

    .line 9
    iput p2, p0, Lcom/google/android/gms/common/images/zaa;->zab:I

    return-void
.end method


# virtual methods
.method final zaa(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 5

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method final zaa(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;)V
    .registers 4

    .line 15
    iget-boolean p1, p0, Lcom/google/android/gms/common/images/zaa;->zag:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_a
    return-void
.end method

.method final zaa(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V
    .registers 4

    .line 20
    iget p2, p0, Lcom/google/android/gms/common/images/zaa;->zab:I

    if-eqz p2, :cond_d

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method protected final zaa(ZZ)Z
    .registers 4

    .line 27
    iget-boolean v0, p0, Lcom/google/android/gms/common/images/zaa;->zae:Z

    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
