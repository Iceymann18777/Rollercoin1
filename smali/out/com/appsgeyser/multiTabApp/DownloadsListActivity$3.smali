.class Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DownloadsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/DownloadsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string p1, "type"

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_63

    .line 304
    invoke-static {}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 305
    :try_start_10
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$300(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/Timer;

    move-result-object v1

    if-nez v1, :cond_37

    .line 306
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$302(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 307
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$300(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_37
    const-string v1, "item"

    .line 310
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    .line 311
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->comparator:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 313
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$500(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->notifyDataSetChanged()V

    .line 315
    monitor-exit v0

    goto :goto_63

    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_10 .. :try_end_62} :catchall_60

    throw p1

    :cond_63
    :goto_63
    const/16 p2, 0x65

    if-ne p1, p2, :cond_92

    .line 318
    invoke-static {}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$400()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 319
    :try_start_6c
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 320
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$500(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->notifyDataSetChanged()V

    .line 322
    monitor-exit p1

    goto :goto_92

    :catchall_8f
    move-exception p2

    monitor-exit p1
    :try_end_91
    .catchall {:try_start_6c .. :try_end_91} :catchall_8f

    throw p2

    :cond_92
    :goto_92
    return-void
.end method
