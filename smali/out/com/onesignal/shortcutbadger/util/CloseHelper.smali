.class public Lcom/onesignal/shortcutbadger/util/CloseHelper;
.super Ljava/lang/Object;
.source "CloseHelper.java"


# direct methods
.method public static close(Landroid/database/Cursor;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 15
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 16
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 24
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method
