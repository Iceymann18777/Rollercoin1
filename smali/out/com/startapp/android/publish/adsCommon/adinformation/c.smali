.class public Lcom/startapp/android/publish/adsCommon/adinformation/c;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private enable:Z

.field private enableOverride:Z

.field private position:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;
    .end annotation
.end field

.field private positionOverride:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->enableOverride:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->enable:Z

    .line 15
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->positionOverride:Z

    .line 16
    sget-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions;->a:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;->getByName(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->position:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    return-void
.end method

.method public static a()Lcom/startapp/android/publish/adsCommon/adinformation/c;
    .registers 1

    .line 24
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adinformation/c;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->position:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->positionOverride:Z

    goto :goto_b

    :cond_8
    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->positionOverride:Z

    :goto_b
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->enable:Z

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->enableOverride:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->enable:Z

    return v0
.end method

.method public c()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->position:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->positionOverride:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/c;->enableOverride:Z

    return v0
.end method
