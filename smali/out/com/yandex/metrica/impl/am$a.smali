.class public final Lcom/yandex/metrica/impl/am$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "/sbin/"

    const-string v1, "/system/bin/"

    const-string v2, "/system/xbin/"

    const-string v3, "/data/local/xbin/"

    const-string v4, "/data/local/bin/"

    const-string v5, "/system/sd/xbin/"

    const-string v6, "/system/bin/failsafe/"

    const-string v7, "/data/local/"

    .line 52
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/am$a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .registers 2

    .line 68
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :catchall_f
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .registers 7

    .line 80
    sget-object v0, Lcom/yandex/metrica/impl/am$a;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_2a

    aget-object v4, v0, v3

    .line 82
    :try_start_9
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "su"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_27

    if-eqz v4, :cond_27

    const/4 v0, 0x1

    return v0

    :catchall_27
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2a
    return v2
.end method

.method public static c()I
    .registers 1

    .line 94
    invoke-static {}, Lcom/yandex/metrica/impl/am$a;->a()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/yandex/metrica/impl/am$a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method
