.class public Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;
.super Ljava/lang/Object;
.source "BrowserDownloadListener.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private _webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 5

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->addIntoDataBase(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->sendMessageToActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addIntoDataBase(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8

    .line 130
    new-instance v0, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-direct {v0, p1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 132
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_e
    const-string v1, "id_d"

    .line 135
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "name"

    .line 136
    invoke-virtual {v0, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "status"

    .line 137
    sget-object p4, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {p4}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "link_d"

    .line 138
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "description"

    .line 139
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "downloadsList"

    const/4 p3, 0x0

    .line 140
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_37} :catch_3a
    .catchall {:try_start_e .. :try_end_37} :catchall_38

    goto :goto_51

    :catchall_38
    move-exception p2

    goto :goto_55

    :catch_3a
    move-exception p2

    :try_start_3b
    const-string p3, "Error"

    .line 142
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "  Error while add string into table downloadsList "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_38

    .line 144
    :goto_51
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :goto_55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 145
    throw p2
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 13

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 95
    invoke-static {p4, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 97
    invoke-static {p1, p3, p2, p4}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 98
    invoke-static {p1, p2, p3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, v0

    move-object v7, p2

    .line 99
    invoke-direct/range {v2 .. v7}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->addIntoDataBase(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V

    move-wide v4, v0

    move-object v6, p2

    move-object v7, p1

    .line 100
    invoke-direct/range {v2 .. v7}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->sendMessageToActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 102
    :cond_1f
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {p4, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 104
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {p4, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setPermissionCallback(Landroid/webkit/ValueCallback;)V

    :goto_36
    return-void
.end method

.method private sendMessageToActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type"

    const/16 v2, 0x64

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    new-instance v1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    sget-object p2, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    .line 44
    :try_start_0
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p2

    .line 46
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    if-eqz p5, :cond_18

    .line 48
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_19

    :cond_18
    move-object p5, p6

    :goto_19
    if-nez p5, :cond_1d

    move-object v4, p4

    goto :goto_1e

    :cond_1d
    move-object v4, p5

    .line 56
    :goto_1e
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p5

    .line 57
    invoke-virtual {p5}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getDownloadAction()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    move-result-object p5

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_2e

    sget-object p5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    .line 60
    :cond_2e
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    if-ne p5, v0, :cond_36

    .line 61
    invoke-static {p1, v4, p2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_78

    .line 62
    :cond_36
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->SAVE:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_38} :catch_5d

    if-ne p5, v0, :cond_42

    .line 65
    :try_start_3a
    invoke-direct {p0, p1, p6, v4, p2}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_3d} :catch_5d

    goto :goto_78

    .line 67
    :catch_3e
    :try_start_3e
    invoke-static {p1, v4, p2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_78

    .line 69
    :cond_42
    sget-object p6, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e .. :try_end_44} :catch_5d

    if-ne p5, p6, :cond_78

    .line 71
    :try_start_46
    new-instance p5, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$1;

    invoke-direct {p5, p0, p1, v4, p2}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$1;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    new-instance p6, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-static {p2, p5, p6}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->showOpenOrSaveDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_58} :catch_59
    .catch Landroid/content/ActivityNotFoundException; {:try_start_46 .. :try_end_58} :catch_5d

    goto :goto_78

    .line 85
    :catch_59
    :try_start_59
    invoke-static {p1, p4, p2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_5c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_78

    :catch_5d
    move-exception p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDownloadStart :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ANFE"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    :goto_78
    return-void
.end method
