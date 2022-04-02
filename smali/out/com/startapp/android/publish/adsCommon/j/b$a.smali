.class Lcom/startapp/android/publish/adsCommon/j/b$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/j/b;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/adsCommon/j/b;II)V
    .registers 4

    .line 109
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/j/b$a;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/startapp/android/publish/adsCommon/j/b$a;->b:I

    .line 111
    iput p3, p0, Lcom/startapp/android/publish/adsCommon/j/b$a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/j/b$a;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/j/b$a;->c:I

    return v0
.end method
