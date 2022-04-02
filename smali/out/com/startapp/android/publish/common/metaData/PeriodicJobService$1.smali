.class Lcom/startapp/android/publish/common/metaData/PeriodicJobService$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/common/b/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/common/metaData/PeriodicJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/job/JobParameters;

.field final synthetic b:Lcom/startapp/android/publish/common/metaData/PeriodicJobService;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/common/metaData/PeriodicJobService;Landroid/app/job/JobParameters;)V
    .registers 3

    .line 20
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/PeriodicJobService$1;->b:Lcom/startapp/android/publish/common/metaData/PeriodicJobService;

    iput-object p2, p0, Lcom/startapp/android/publish/common/metaData/PeriodicJobService$1;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/common/b/a/b$a;)V
    .registers 4

    .line 23
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/PeriodicJobService$1;->b:Lcom/startapp/android/publish/common/metaData/PeriodicJobService;

    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/PeriodicJobService$1;->a:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/startapp/android/publish/common/metaData/PeriodicJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
