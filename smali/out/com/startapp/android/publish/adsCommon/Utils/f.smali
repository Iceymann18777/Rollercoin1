.class public Lcom/startapp/android/publish/adsCommon/Utils/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main.1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".obb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main[.][1-9][0-9]*[.]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[.]obb"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 108
    new-instance v3, Lcom/startapp/android/publish/adsCommon/Utils/f$1;

    invoke-direct {v3, p0}, Lcom/startapp/android/publish/adsCommon/Utils/f$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 114
    array-length v2, p0

    if-lez v2, :cond_9c

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    :goto_79
    array-length v4, p0

    if-ge v1, v4, :cond_96

    .line 119
    :try_start_7c
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[.]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8f} :catch_93

    if-le v4, v3, :cond_93

    move v2, v1

    move v3, v4

    :catch_93
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 128
    :cond_96
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_9c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 210
    :try_start_5
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_6c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_6a
    .catchall {:try_start_5 .. :try_end_f} :catchall_61

    .line 212
    :try_start_f
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    :goto_13
    if-eqz p1, :cond_58

    .line 214
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_3a} :catch_58
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3a} :catch_58
    .catchall {:try_start_f .. :try_end_3a} :catchall_5f

    :goto_3a
    const/4 p1, 0x0

    .line 218
    :try_start_3b
    invoke-virtual {v3, v1, p1, v0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-le v2, v5, :cond_46

    .line 219
    invoke-virtual {v4, v1, p1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3a

    .line 222
    :cond_46
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 223
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 224
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_50} :catch_57
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_50} :catch_55
    .catchall {:try_start_3b .. :try_end_50} :catchall_52

    move-object v2, v4

    goto :goto_13

    :catchall_52
    move-exception p0

    move-object v2, v4

    goto :goto_63

    :catch_55
    move-object v2, v4

    goto :goto_58

    :catch_57
    move-object v2, v4

    .line 231
    :catch_58
    :cond_58
    :goto_58
    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5b

    .line 235
    :catch_5b
    :try_start_5b
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_6e

    goto :goto_6e

    :catchall_5f
    move-exception p0

    goto :goto_63

    :catchall_61
    move-exception p0

    move-object v3, v2

    .line 231
    :goto_63
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_66

    .line 235
    :catch_66
    :try_start_66
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69

    .line 237
    :catch_69
    throw p0

    :catch_6a
    move-object v3, v2

    goto :goto_58

    :catch_6c
    move-object v3, v2

    goto :goto_58

    :catch_6e
    :goto_6e
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 11

    const-string v0, "assets/"

    const-string v1, ""

    const-string v2, "Error initializing resources"

    const-string v3, "ResourceHandler"

    const-string v4, "copyDrawables"

    const/4 v5, 0x1

    .line 42
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz p1, :cond_16

    .line 41
    sput-boolean v5, Lcom/startapp/android/publish/adsCommon/Utils/f;->a:Z

    .line 42
    invoke-static {p0, v4, v6}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    :cond_16
    sget-boolean p1, Lcom/startapp/android/publish/adsCommon/Utils/f;->a:Z

    if-nez p1, :cond_1b

    return-void

    .line 49
    :cond_1b
    invoke-static {p0, v4, v6}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/startapp/android/publish/adsCommon/Utils/f;->a:Z

    if-nez p1, :cond_28

    return-void

    :cond_28
    const-string p1, "drawable-hdpi.zip"

    .line 88
    :try_start_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {p0, v4, v1, p1}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 91
    invoke-static {p0, v4, v0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 92
    invoke-static {p0, v6, v1, p1}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 93
    invoke-static {p0, v6, v0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_56

    goto :goto_57

    :cond_56
    const/4 v5, 0x0

    :cond_57
    :goto_57
    if-nez v5, :cond_63

    const/4 p0, 0x5

    .line 95
    invoke-static {v3, p0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5d} :catch_5e

    goto :goto_63

    :catch_5e
    move-exception p0

    const/4 p1, 0x6

    .line 98
    invoke-static {v3, p1, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_63
    :goto_63
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to copy resources from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in /"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResourceHandler"

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_6c

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed copying resources from "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v4

    .line 141
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "drawable.zip"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p3, v6}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "copyDrawables"

    invoke-static {p0, v0, p3}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Copy from "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " succeeded"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 159
    :try_start_2
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_5f
    .catchall {:try_start_2 .. :try_end_7} :catchall_5d

    .line 160
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 162
    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 163
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 164
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_b

    .line 167
    :cond_1e
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2a

    :cond_29
    move-object v3, v1

    :goto_2a
    if-eqz v3, :cond_54

    .line 173
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_30} :catch_5b
    .catchall {:try_start_7 .. :try_end_30} :catchall_58

    .line 174
    :try_start_30
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_51
    .catchall {:try_start_30 .. :try_end_35} :catchall_58

    const/16 p2, 0x100

    :try_start_37
    new-array p2, p2, [B

    .line 177
    :goto_39
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_43

    .line 178
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_39

    .line 180
    :cond_43
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_46} :catch_52
    .catchall {:try_start_37 .. :try_end_46} :catchall_58

    .line 182
    :try_start_46
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 183
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4c} :catch_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_58

    :catch_4c
    const/4 p0, 0x1

    .line 199
    :try_start_4d
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_50

    :catch_50
    return p0

    :catch_51
    move-object p1, v1

    :catch_52
    move-object v1, p0

    goto :goto_61

    :cond_54
    :try_start_54
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_57

    :catch_57
    return v0

    :catchall_58
    move-exception p0

    move-object v1, v2

    goto :goto_68

    :catch_5b
    move-object p1, v1

    goto :goto_61

    :catchall_5d
    move-exception p0

    goto :goto_68

    :catch_5f
    move-object p1, v1

    move-object v2, p1

    .line 192
    :goto_61
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 193
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_6c
    .catchall {:try_start_61 .. :try_end_67} :catchall_58

    goto :goto_6c

    .line 199
    :goto_68
    :try_start_68
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6b

    .line 201
    :catch_6b
    throw p0

    .line 199
    :catch_6c
    :goto_6c
    :try_start_6c
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_6f

    :catch_6f
    return v0
.end method
