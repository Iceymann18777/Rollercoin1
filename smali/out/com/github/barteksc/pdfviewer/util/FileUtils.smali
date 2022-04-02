.class public Lcom/github/barteksc/pdfviewer/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_28

    const/16 p1, 0x400

    :try_start_8
    new-array p1, p1, [B

    .line 47
    :goto_a
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_25

    goto :goto_a

    :cond_16
    if-eqz p0, :cond_21

    .line 53
    :try_start_18
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_21

    :catchall_1c
    move-exception p0

    .line 57
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw p0

    :cond_21
    :goto_21
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_25
    move-exception p1

    move-object v0, v1

    goto :goto_29

    :catchall_28
    move-exception p1

    :goto_29
    if-eqz p0, :cond_36

    .line 53
    :try_start_2b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_36

    :catchall_2f
    move-exception p0

    if-eqz v0, :cond_35

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_35
    throw p0

    :cond_36
    :goto_36
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw p1

    :goto_3d
    goto :goto_3c
.end method

.method public static fileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-pdfview.pdf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "/"

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/github/barteksc/pdfviewer/util/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    return-object v0
.end method
