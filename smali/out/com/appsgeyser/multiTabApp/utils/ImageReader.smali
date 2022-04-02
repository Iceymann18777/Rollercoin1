.class public Lcom/appsgeyser/multiTabApp/utils/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"


# direct methods
.method public static createBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const-string v0, ""

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const-string v1, "data:image/png;base64,"

    .line 55
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 57
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 22
    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 23
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 24
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 28
    :goto_f
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    if-lt v3, p1, :cond_20

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    if-lt v3, p1, :cond_20

    mul-int/lit8 v2, v2, 0x2

    goto :goto_f

    .line 32
    :cond_20
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 33
    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 36
    :try_start_27
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2f

    .line 42
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_2f
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method
