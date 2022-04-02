.class public final Lcom/startapp/android/publish/adsCommon/Utils/b$a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/common/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/Utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/startapp/common/b/a/b;
    .registers 3

    const v0, 0x22f50468

    if-eq p1, v0, :cond_12

    const v0, 0x2ee20534

    if-eq p1, v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_c
    new-instance p1, Lcom/startapp/android/publish/common/metaData/e;

    invoke-direct {p1}, Lcom/startapp/android/publish/common/metaData/e;-><init>()V

    return-object p1

    .line 32
    :cond_12
    new-instance p1, Lcom/startapp/android/publish/common/metaData/f;

    invoke-direct {p1}, Lcom/startapp/android/publish/common/metaData/f;-><init>()V

    return-object p1
.end method
