.class final Lcom/google/android/gms/plus/PlusOneDummyView$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneDummyView$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/zzd;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-string v0, "com.google.android.gms"

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1e

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_18

    const-string p1, "ic_plusone_standard"

    goto :goto_20

    :cond_18
    const-string p1, "ic_plusone_tall"

    goto :goto_20

    :cond_1b
    const-string p1, "ic_plusone_medium"

    goto :goto_20

    :cond_1e
    const-string p1, "ic_plusone_small"

    :goto_20
    const-string v2, "drawable"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2a} :catch_2b

    return-object p1

    :catch_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isValid()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 v0, 0x1

    return v0

    :catch_e
    const/4 v0, 0x0

    return v0
.end method
