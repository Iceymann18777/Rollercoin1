.class public Lcom/startapp/android/publish/adsCommon/a/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/startapp/android/publish/adsCommon/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Ljava/lang/String;)V
    .registers 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/adsCommon/a/a;->a:J

    .line 14
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/a/a;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    if-nez p2, :cond_f

    const-string p2, ""

    .line 18
    :cond_f
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/android/publish/adsCommon/a/a;)I
    .registers 6

    .line 35
    iget-wide v0, p0, Lcom/startapp/android/publish/adsCommon/a/a;->a:J

    iget-wide v2, p1, Lcom/startapp/android/publish/adsCommon/a/a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    cmp-long p1, v0, v2

    if-nez p1, :cond_13

    const/4 p1, 0x0

    return p1

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public a()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/a;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 5
    check-cast p1, Lcom/startapp/android/publish/adsCommon/a/a;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/a/a;->a(Lcom/startapp/android/publish/adsCommon/a/a;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdDisplayEvent [displayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/startapp/android/publish/adsCommon/a/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", placement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/a/a;->b:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
