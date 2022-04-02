.class Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;
.super Ljava/util/TimerTask;
.source "DownloadsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/DownloadsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;)V
    .registers 3

    .line 151
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 154
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sget-object v3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v0, v3}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_26
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$300(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 155
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$300(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 156
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$302(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/util/Timer;)Ljava/util/Timer;

    return-void

    .line 159
    :cond_3d
    invoke-static {}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_42
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v3}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    .line 161
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    if-eq v5, v6, :cond_61

    goto :goto_d0

    .line 164
    :cond_61
    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [J

    .line 165
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v7

    aput-wide v7, v6, v2

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 166
    iget-object v6, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    iget-object v6, v6, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v6, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v5

    .line 167
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 169
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v6, "bytes_so_far"

    .line 170
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "total_size"

    .line 171
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 172
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    mul-int/lit8 v6, v6, 0x64

    .line 173
    div-int/2addr v6, v7

    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setProgress(Ljava/lang/Integer;)V

    goto :goto_c1

    .line 176
    :cond_a5
    sget-object v6, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V

    .line 177
    sget-object v6, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDescription(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDate(Ljava/lang/Long;)V

    .line 179
    invoke-virtual {v4, v1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setFile_path(Ljava/lang/String;)V

    .line 181
    :goto_c1
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    new-instance v6, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask$1;

    invoke-direct {v6, p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask$1;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;)V

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4c

    .line 190
    :cond_d0
    :goto_d0
    monitor-exit v0

    return-void

    :catchall_d2
    move-exception v1

    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_42 .. :try_end_d4} :catchall_d2

    goto :goto_d6

    :goto_d5
    throw v1

    :goto_d6
    goto :goto_d5
.end method
