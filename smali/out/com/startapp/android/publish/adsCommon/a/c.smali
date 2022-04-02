.class public abstract Lcom/startapp/android/publish/adsCommon/a/c;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/startapp/common/c/e;
    a = "type"
    b = "com.startapp.android.publish.adsCommon.adrules"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient a:Z


# virtual methods
.method public a()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/a/c;->a:Z

    return v0
.end method

.method public abstract a(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/a;",
            ">;)Z"
        }
    .end annotation
.end method
