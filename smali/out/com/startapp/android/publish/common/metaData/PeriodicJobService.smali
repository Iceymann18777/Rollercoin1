.class public Lcom/startapp/android/publish/common/metaData/PeriodicJobService;
.super Landroid/app/job/JobService;
.source "StartAppSDK"


# static fields
.field private static final a:Ljava/lang/String; = "PeriodicJobService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    .line 18
    invoke-static {p0}, Lcom/startapp/common/b/a;->a(Landroid/content/Context;)Lcom/startapp/common/b/a;

    .line 20
    new-instance v0, Lcom/startapp/android/publish/common/metaData/PeriodicJobService$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/common/metaData/PeriodicJobService$1;-><init>(Lcom/startapp/android/publish/common/metaData/PeriodicJobService;Landroid/app/job/JobParameters;)V

    invoke-static {p1, v0}, Lcom/startapp/common/b/a;->a(Landroid/app/job/JobParameters;Lcom/startapp/common/b/a/b$b;)Z

    move-result p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartJob: RunnerManager.runJob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "PeriodicJobService"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
