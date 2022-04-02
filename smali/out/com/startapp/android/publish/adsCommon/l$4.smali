.class final Lcom/startapp/android/publish/adsCommon/l$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/l;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .registers 6

    .line 337
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 338
    iget-wide p1, p2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_a

    const/4 p1, -0x1

    goto :goto_11

    :cond_a
    cmp-long v2, v0, p1

    if-nez v2, :cond_10

    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    :goto_11
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 334
    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/l$4;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result p1

    return p1
.end method
