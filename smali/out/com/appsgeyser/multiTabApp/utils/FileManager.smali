.class public Lcom/appsgeyser/multiTabApp/utils/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static PERMISSIONS_STORAGE:[Ljava/lang/String;

.field private static final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 32
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/FileManager;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/FileManager;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .registers 6

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_9

    invoke-static {p0, p1, p3}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_9
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 107
    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 108
    invoke-static {p0, p1, p3}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_14
    const-string v0, "download"

    .line 111
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/DownloadManager;

    .line 112
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 114
    invoke-static {p0, p2, p1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 115
    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 116
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 118
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xb

    if-lt p0, p1, :cond_3e

    .line 119
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p0, 0x1

    .line 120
    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 122
    :cond_3e
    invoke-virtual {p3, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 126
    invoke-static {p0, v0, p1, p2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    return-void
.end method

.method public static fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-class v2, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1, p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1d

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 80
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_24

    .line 82
    :cond_1d
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    :goto_24
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_56

    .line 90
    :cond_33
    sget-object v0, Lcom/appsgeyser/multiTabApp/utils/FileManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 91
    new-instance p1, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-class v1, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-direct {p1, v3, v0, p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4c

    .line 93
    :cond_47
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    :goto_4c
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_56
    return-void
.end method

.method public static getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_48

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_48

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 57
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 59
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_24} :catch_3f

    .line 62
    :goto_24
    :try_start_24
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_3a

    goto :goto_24

    .line 66
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 68
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_43

    :catchall_3a
    move-exception p0

    .line 66
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 67
    throw p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    :cond_43
    :goto_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_48
    :goto_48
    const-string p0, ""

    return-object p0
.end method

.method public static saveBitmapToGallery(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/io/File;
    .registers 7

    .line 132
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 136
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    .line 137
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    .line 138
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "2.3.3"

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v2, :cond_7b

    .line 145
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6b

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 147
    invoke-static {p2, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_6b

    .line 150
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->getInstance()Lcom/appsgeyser/multiTabApp/utils/PermissionController;

    move-result-object p2

    .line 151
    sget-object v1, Lcom/appsgeyser/multiTabApp/utils/FileManager;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->addPermissions([Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    :cond_6b
    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 155
    invoke-static {p2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 156
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 157
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    goto :goto_7f

    .line 160
    :cond_7b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    .line 163
    :cond_7f
    :goto_7f
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 166
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 167
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 168
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 169
    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->scanPhoto(Ljava/io/File;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ad} :catch_ae

    goto :goto_b3

    :catch_ae
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_b3
    return-object v1
.end method

.method private static scanPhoto(Ljava/io/File;)V
    .registers 3

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 180
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
