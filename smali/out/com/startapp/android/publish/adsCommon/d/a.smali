.class public Lcom/startapp/android/publish/adsCommon/d/a;
.super Lcom/startapp/android/publish/adsCommon/d/b;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final DURATION_PARAM_NAME:Ljava/lang/String;

.field private duration:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    const-string p2, "&displayDuration="

    .line 7
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/d/a;->DURATION_PARAM_NAME:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/d/a;->duration:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getQueryString()Ljava/lang/String;
    .registers 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&displayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/d/a;->duration:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/adsCommon/d/a;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
