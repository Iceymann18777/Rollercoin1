.class Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"

# interfaces
.implements Lcom/onesignal/LocationController$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3

    .line 243
    iput-object p1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    iput-object p2, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/onesignal/LocationController$PermissionType;
    .registers 2

    .line 246
    sget-object v0, Lcom/onesignal/LocationController$PermissionType;->SYNC_SERVICE:Lcom/onesignal/LocationController$PermissionType;

    return-object v0
.end method

.method public onComplete(Lcom/onesignal/LocationController$LocationPoint;)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_8

    .line 251
    :cond_3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 252
    :goto_8
    iget-object v0, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
