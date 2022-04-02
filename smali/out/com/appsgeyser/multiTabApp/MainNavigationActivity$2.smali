.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const-string p1, "extra_download_id"

    const-wide/16 v0, -0x1

    .line 130
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 131
    new-instance v0, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 134
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const-string v3, "download"

    invoke-virtual {v2, v3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 135
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    .line 136
    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 137
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 139
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d8

    const-string v3, "status"

    .line 140
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 142
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "local_uri"

    .line 149
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 150
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_63

    .line 152
    new-instance v7, Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_64

    :cond_63
    move-object v5, v6

    :goto_64
    const-string v7, "reason"

    .line 156
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 158
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0x8

    const-string v9, "id_d = "

    const-string v10, "downloadsList"

    const-string v11, "date"

    if-eq v4, v8, :cond_ad

    const/16 v5, 0x10

    if-eq v4, v5, :cond_7d

    goto :goto_d8

    .line 167
    :cond_7d
    sget-object v4, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v10, v1, p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d8

    .line 161
    :cond_ad
    sget-object v4, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Ok:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "file_path"

    .line 162
    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v10, v1, p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    :cond_d8
    :goto_d8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 184
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/16 p2, 0x65

    const-string v1, "type"

    .line 185
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    sget-object p2, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method
