.class public Lcom/appnext/base/operations/AsyncJobTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final jobParameters:Landroid/app/job/JobParameters;

.field private final jobService:Lcom/appnext/base/operations/AppnextOperationJobService;


# direct methods
.method public constructor <init>(Lcom/appnext/base/operations/AppnextOperationJobService;Landroid/app/job/JobParameters;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/appnext/base/operations/AsyncJobTask;->jobService:Lcom/appnext/base/operations/AppnextOperationJobService;

    .line 16
    iput-object p2, p0, Lcom/appnext/base/operations/AsyncJobTask;->jobParameters:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 3

    .line 21
    iget-object p1, p0, Lcom/appnext/base/operations/AsyncJobTask;->jobService:Lcom/appnext/base/operations/AppnextOperationJobService;

    iget-object v0, p0, Lcom/appnext/base/operations/AsyncJobTask;->jobParameters:Landroid/app/job/JobParameters;

    invoke-virtual {p1, v0}, Lcom/appnext/base/operations/AppnextOperationJobService;->onRunJob(Landroid/app/job/JobParameters;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appnext/base/operations/AsyncJobTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public finishJob()V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/appnext/base/operations/AsyncJobTask;->jobService:Lcom/appnext/base/operations/AppnextOperationJobService;

    iget-object v1, p0, Lcom/appnext/base/operations/AsyncJobTask;->jobParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appnext/base/operations/AppnextOperationJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 2

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/appnext/base/operations/AsyncJobTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
