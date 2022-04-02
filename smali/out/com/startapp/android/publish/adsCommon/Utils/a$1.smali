.class final Lcom/startapp/android/publish/adsCommon/Utils/a$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .registers 5

    .line 66
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 69
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    :try_start_1d
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_47} :catch_5b
    .catchall {:try_start_1d .. :try_end_47} :catchall_56

    .line 74
    :try_start_47
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/a$1;->c:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_54
    .catchall {:try_start_47 .. :try_end_50} :catchall_6d

    .line 81
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_68

    goto :goto_6c

    :catch_54
    move-exception v0

    goto :goto_5f

    :catchall_56
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6e

    :catch_5b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 77
    :goto_5f
    :try_start_5f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6d

    if-eqz v1, :cond_6c

    .line 81
    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6c
    :goto_6c
    return-void

    :catchall_6d
    move-exception v0

    :goto_6e
    if-eqz v1, :cond_78

    .line 81
    :try_start_70
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :cond_78
    :goto_78
    throw v0
.end method
