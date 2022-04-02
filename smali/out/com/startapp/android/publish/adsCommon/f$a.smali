.class Lcom/startapp/android/publish/adsCommon/f$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/startapp/android/publish/adsCommon/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/startapp/android/publish/adsCommon/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/adsCommon/f;-><init>(Lcom/startapp/android/publish/adsCommon/f$1;)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/f$a;->a:Lcom/startapp/android/publish/adsCommon/f;

    return-void
.end method

.method static synthetic a()Lcom/startapp/android/publish/adsCommon/f;
    .registers 1

    .line 21
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f$a;->a:Lcom/startapp/android/publish/adsCommon/f;

    return-object v0
.end method
