.class Lcom/onesignal/OneSignal$PendingTaskRunnable;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingTaskRunnable"
.end annotation


# instance fields
.field private innerTask:Ljava/lang/Runnable;

.field private taskId:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput-object p1, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->innerTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J
    .registers 3

    .line 875
    iget-wide v0, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->taskId:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/onesignal/OneSignal$PendingTaskRunnable;J)J
    .registers 3

    .line 875
    iput-wide p1, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->taskId:J

    return-wide p1
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 885
    iget-object v0, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->innerTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 886
    iget-wide v0, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->taskId:J

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->access$400(J)V

    return-void
.end method
