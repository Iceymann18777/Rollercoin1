.class public final Lcom/startapp/android/publish/adsCommon/g/c/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "portrait"

    const-string v1, "landscape"

    const-string v2, "none"

    .line 15
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/g/c/a;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/g/c/a;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/g/c/a;->a:Z

    .line 23
    iput p2, p0, Lcom/startapp/android/publish/adsCommon/g/c/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    .line 27
    sget-object v0, Lcom/startapp/android/publish/adsCommon/g/c/a;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    return p0

    :cond_a
    const/4 p0, 0x2

    return p0
.end method
