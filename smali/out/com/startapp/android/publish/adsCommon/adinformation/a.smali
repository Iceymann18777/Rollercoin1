.class public Lcom/startapp/android/publish/adsCommon/adinformation/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Lcom/startapp/android/publish/adsCommon/adinformation/a; = null

.field private static b:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private AdInformation:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private adInformationMetadataUpdateVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a:Lcom/startapp/android/publish/adsCommon/adinformation/a;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->a()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->AdInformation:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    .line 24
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->adInformationMetadataUpdateVersion:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 38
    const-class v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;

    const-string v1, "StartappAdInfoMetadata"

    invoke-static {p0, v1, v0}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;

    .line 39
    new-instance v1, Lcom/startapp/android/publish/adsCommon/adinformation/a;

    invoke-direct {v1}, Lcom/startapp/android/publish/adsCommon/adinformation/a;-><init>()V

    if-eqz v0, :cond_2c

    .line 41
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 42
    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->f()Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v1, :cond_26

    .line 43
    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->k:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v2, "AdInformationMetaData"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_26
    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->e()V

    .line 46
    sput-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a:Lcom/startapp/android/publish/adsCommon/adinformation/a;

    goto :goto_2e

    .line 48
    :cond_2c
    sput-object v1, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a:Lcom/startapp/android/publish/adsCommon/adinformation/a;

    .line 50
    :goto_2e
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->b()Lcom/startapp/android/publish/adsCommon/adinformation/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/adinformation/a;)V
    .registers 4

    .line 64
    sget-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iput-object v1, p1, Lcom/startapp/android/publish/adsCommon/adinformation/a;->adInformationMetadataUpdateVersion:Ljava/lang/String;

    .line 66
    sput-object p1, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a:Lcom/startapp/android/publish/adsCommon/adinformation/a;

    .line 67
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->b()Lcom/startapp/android/publish/adsCommon/adinformation/a;

    move-result-object v1

    iget-object v1, v1, Lcom/startapp/android/publish/adsCommon/adinformation/a;->AdInformation:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;)V

    .line 68
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->b()Lcom/startapp/android/publish/adsCommon/adinformation/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->g()V

    const-string v1, "StartappAdInfoMetadata"

    .line 69
    invoke-static {p0, v1, p1}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 70
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public static b()Lcom/startapp/android/publish/adsCommon/adinformation/a;
    .registers 1

    .line 59
    sget-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a:Lcom/startapp/android/publish/adsCommon/adinformation/a;

    return-object v0
.end method

.method private e()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->AdInformation:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->k()V

    return-void
.end method

.method private f()Z
    .registers 3

    .line 82
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->adInformationMetadataUpdateVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->AdInformation:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->AdInformation:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/a;->AdInformation:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
