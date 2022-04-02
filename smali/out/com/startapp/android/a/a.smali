.class public final Lcom/startapp/android/a/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Lcom/startapp/android/a/b;

.field private static o:Lcom/startapp/android/a/a;

.field private static p:Ljava/lang/Boolean;


# instance fields
.field private final k:Landroid/content/Context;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "15555215554"

    const-string v1, "15555215556"

    const-string v2, "15555215558"

    const-string v3, "15555215560"

    const-string v4, "15555215562"

    const-string v5, "15555215564"

    const-string v6, "15555215566"

    const-string v7, "15555215568"

    const-string v8, "15555215570"

    const-string v9, "15555215572"

    const-string v10, "15555215574"

    const-string v11, "15555215576"

    const-string v12, "15555215578"

    const-string v13, "15555215580"

    const-string v14, "15555215582"

    const-string v15, "15555215584"

    .line 51
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/a/a;->a:[Ljava/lang/String;

    const-string v0, "000000000000000"

    const-string v1, "e21833235b6eef10"

    const-string v2, "012345678912345"

    .line 57
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/a/a;->b:[Ljava/lang/String;

    const-string v0, "310260000000000"

    .line 63
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/a/a;->c:[Ljava/lang/String;

    const-string v0, "/dev/socket/genyd"

    const-string v1, "/dev/socket/baseband_genyd"

    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/a/a;->d:[Ljava/lang/String;

    const-string v0, "goldfish"

    .line 72
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/startapp/android/a/a;->e:[Ljava/lang/String;

    const-string v1, "/dev/socket/qemud"

    const-string v2, "/dev/qemu_pipe"

    .line 74
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/startapp/android/a/a;->f:[Ljava/lang/String;

    const-string v2, "ueventd.android_x86.rc"

    const-string v3, "x86.prop"

    const-string v4, "ueventd.ttVM_x86.rc"

    const-string v5, "init.ttVM_x86.rc"

    const-string v6, "fstab.ttVM_x86"

    const-string v7, "fstab.vbox86"

    const-string v8, "init.vbox86.rc"

    const-string v9, "ueventd.vbox86.rc"

    .line 79
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/startapp/android/a/a;->g:[Ljava/lang/String;

    const-string v1, "fstab.andy"

    const-string v2, "ueventd.andy.rc"

    .line 90
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/startapp/android/a/a;->h:[Ljava/lang/String;

    const-string v1, "fstab.nox"

    const-string v2, "init.nox.rc"

    const-string v3, "ueventd.nox.rc"

    const-string v4, "/BigNoxGameHD"

    const-string v5, "/YSLauncher"

    .line 95
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/startapp/android/a/a;->i:[Ljava/lang/String;

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/startapp/android/a/b;

    .line 103
    new-instance v2, Lcom/startapp/android/a/b;

    const-string v3, "init.svc.qemud"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/startapp/android/a/b;

    const-string v3, "init.svc.qemu-props"

    invoke-direct {v2, v3, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/startapp/android/a/b;

    const-string v3, "qemu.hw.mainkeys"

    invoke-direct {v2, v3, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/startapp/android/a/b;

    const-string v3, "qemu.sf.fake_camera"

    invoke-direct {v2, v3, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/startapp/android/a/b;

    const-string v3, "qemu.sf.lcd_density"

    invoke-direct {v2, v3, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/startapp/android/a/b;

    const-string v3, "ro.bootloader"

    const-string v5, "unknown"

    invoke-direct {v2, v3, v5}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/startapp/android/a/b;

    const-string v3, "ro.bootmode"

    invoke-direct {v2, v3, v5}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/startapp/android/a/b;

    const-string v3, "ro.hardware"

    invoke-direct {v2, v3, v0}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    aput-object v2, v1, v0

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.kernel.android.qemud"

    invoke-direct {v0, v2, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.kernel.qemu.gles"

    invoke-direct {v0, v2, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.kernel.qemu"

    const-string v3, "1"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.product.device"

    const-string v3, "generic"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.product.model"

    const-string v3, "sdk"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.product.name"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.serialno"

    invoke-direct {v0, v2, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.build.description"

    const-string v3, "72656C656173652D6B657973"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.build.fingerprint"

    const-string v3, "3A757365722F72656C656173652D6B657973"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "net.eth0.dns1"

    invoke-direct {v0, v2, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "rild.libpath"

    const-string v3, "2F73797374656D2F6C69622F6C69627265666572656E63652D72696C2E736F"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.radio.use-ppp"

    invoke-direct {v0, v2, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "gsm.version.baseband"

    invoke-direct {v0, v2, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.build.tags"

    const-string v3, "72656C656173652D6B65"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "ro.build.display.id"

    const-string v3, "746573742D"

    invoke-direct {v0, v2, v3}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v0, v1, v2

    new-instance v0, Lcom/startapp/android/a/b;

    const-string v2, "init.svc.console"

    invoke-direct {v0, v2, v4}, Lcom/startapp/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/startapp/android/a/a;->j:[Lcom/startapp/android/a/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/startapp/android/a/a;->l:Z

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/startapp/android/a/a;->m:Z

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/a/a;->n:Ljava/util/List;

    .line 160
    iput-object p1, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    const-string p1, "com.google.android.launcher.layouts.genymotion"

    .line 161
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object p1, p0, Lcom/startapp/android/a/a;->n:Ljava/util/List;

    const-string v0, "com.bluestacks"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object p1, p0, Lcom/startapp/android/a/a;->n:Ljava/util/List;

    const-string v0, "com.bignox.app"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lcom/startapp/android/a/a;->n:Ljava/util/List;

    const-string v0, "com.vphone.launcher"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 453
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "android.os.SystemProperties"

    .line 454
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "get"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 456
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    .line 461
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Z
    .registers 2

    .line 201
    invoke-direct {p0}, Lcom/startapp/android/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 205
    invoke-direct {p0}, Lcom/startapp/android/a/a;->c()Z

    move-result v0

    :cond_a
    if-nez v0, :cond_10

    .line 210
    invoke-direct {p0}, Lcom/startapp/android/a/a;->d()Z

    move-result v0

    :cond_10
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .line 143
    sget-object v0, Lcom/startapp/android/a/a;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    .line 144
    invoke-static {p0}, Lcom/startapp/android/a/a;->b(Landroid/content/Context;)Lcom/startapp/android/a/a;

    move-result-object p0

    invoke-direct {p0}, Lcom/startapp/android/a/a;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/startapp/android/a/a;->p:Ljava/lang/Boolean;

    .line 147
    :cond_12
    sget-object p0, Lcom/startapp/android/a/a;->p:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 383
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4a

    aget-object v3, p1, v2

    .line 385
    iget-object v4, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v4, v5}, Lcom/startapp/android/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "Nox"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 386
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3f

    .line 388
    :cond_3a
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    :goto_3f
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 p1, 0x1

    return p1

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4a
    return v1
.end method

.method private static b(Landroid/content/Context;)Lcom/startapp/android/a/a;
    .registers 2

    if-eqz p0, :cond_14

    .line 154
    sget-object v0, Lcom/startapp/android/a/a;->o:Lcom/startapp/android/a/a;

    if-nez v0, :cond_11

    .line 155
    new-instance v0, Lcom/startapp/android/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/startapp/android/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/startapp/android/a/a;->o:Lcom/startapp/android/a/a;

    .line 156
    :cond_11
    sget-object p0, Lcom/startapp/android/a/a;->o:Lcom/startapp/android/a/a;

    return-object p0

    .line 152
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b()Z
    .registers 7

    .line 217
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "google_sdk"

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "droid4x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for"

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    .line 223
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "vbox86"

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk"

    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk_x86"

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "vbox86p"

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "nox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "unknown"

    .line 234
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "Andy"

    .line 235
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "ttVM_Hdragon"

    .line 236
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "ttVM_x86"

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Droid4X"

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "TiantianVM"

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 242
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11d

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11d

    goto :goto_11f

    :cond_11d
    const/4 v0, 0x0

    goto :goto_120

    :cond_11f
    :goto_11f
    const/4 v0, 0x1

    :goto_120
    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 475
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_10

    .line 476
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    .line 478
    :cond_10
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    if-nez p1, :cond_17

    const/4 v0, 0x1

    :catchall_17
    :cond_17
    return v0
.end method

.method private c()Z
    .registers 3

    .line 247
    invoke-direct {p0}, Lcom/startapp/android/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_4d

    sget-object v0, Lcom/startapp/android/a/a;->d:[Ljava/lang/String;

    const-string v1, "Geny"

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/startapp/android/a/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    sget-object v0, Lcom/startapp/android/a/a;->h:[Ljava/lang/String;

    const-string v1, "Andy"

    .line 249
    invoke-direct {p0, v0, v1}, Lcom/startapp/android/a/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    sget-object v0, Lcom/startapp/android/a/a;->i:[Ljava/lang/String;

    const-string v1, "Nox"

    .line 250
    invoke-direct {p0, v0, v1}, Lcom/startapp/android/a/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 251
    invoke-direct {p0}, Lcom/startapp/android/a/a;->j()Z

    move-result v0

    if-nez v0, :cond_4d

    sget-object v0, Lcom/startapp/android/a/a;->f:[Ljava/lang/String;

    const-string v1, "Pipes"

    .line 252
    invoke-direct {p0, v0, v1}, Lcom/startapp/android/a/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 253
    invoke-direct {p0}, Lcom/startapp/android/a/a;->l()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 254
    invoke-direct {p0}, Lcom/startapp/android/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/startapp/android/a/a;->g:[Ljava/lang/String;

    const-string v1, "X86"

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/a/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v0, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v0, 0x1

    :goto_4e
    return v0
.end method

.method private d()Z
    .registers 6

    .line 258
    iget-boolean v0, p0, Lcom/startapp/android/a/a;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/startapp/android/a/a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3a

    .line 261
    :cond_e
    iget-object v0, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/startapp/android/a/a;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 263
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1a

    const/high16 v4, 0x10000

    .line 265
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 266
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_3a
    :goto_3a
    return v1
.end method

.method private e()Z
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/startapp/android/a/a;->l:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/startapp/android/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 276
    invoke-direct {p0}, Lcom/startapp/android/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 277
    invoke-direct {p0}, Lcom/startapp/android/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 278
    invoke-direct {p0}, Lcom/startapp/android/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 279
    invoke-direct {p0}, Lcom/startapp/android/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method private f()Z
    .registers 7

    .line 285
    iget-object v0, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    const-string v1, "phone"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 290
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 292
    sget-object v2, Lcom/startapp/android/a/a;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_24

    aget-object v5, v2, v4

    .line 293
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_24
    return v1
.end method

.method private g()Z
    .registers 7

    .line 303
    iget-object v0, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    const-string v1, "phone"

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 308
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 310
    sget-object v2, Lcom/startapp/android/a/a;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_24

    aget-object v5, v2, v4

    .line 311
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_24
    return v1
.end method

.method private h()Z
    .registers 7

    .line 321
    iget-object v0, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    const-string v1, "phone"

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 326
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 328
    sget-object v2, Lcom/startapp/android/a/a;->c:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_24

    aget-object v5, v2, v4

    .line 329
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_24
    return v1
.end method

.method private i()Z
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    const-string v1, "phone"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_17

    .line 341
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private j()Z
    .registers 13

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/io/File;

    .line 348
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/tty/drivers"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/File;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_7b

    aget-object v5, v1, v2

    .line 349
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v6, 0x400

    new-array v6, v6, [C

    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    .line 354
    :try_start_32
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_71
    .catchall {:try_start_32 .. :try_end_41} :catchall_6a

    .line 356
    :goto_41
    :try_start_41
    invoke-virtual {v9, v6}, Ljava/io/Reader;->read([C)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_4c

    .line 357
    invoke-virtual {v7, v6, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4b} :catch_68
    .catchall {:try_start_41 .. :try_end_4b} :catchall_65

    goto :goto_41

    .line 364
    :cond_4c
    :try_start_4c
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_4f

    .line 370
    :catch_4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 371
    sget-object v6, Lcom/startapp/android/a/a;->e:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_57
    if-ge v8, v7, :cond_78

    aget-object v9, v6, v8

    .line 372
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_62

    return v4

    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    :catchall_65
    move-exception v0

    move-object v8, v9

    goto :goto_6b

    :catch_68
    move-object v8, v9

    goto :goto_72

    :catchall_6a
    move-exception v0

    :goto_6b
    if-eqz v8, :cond_70

    .line 364
    :try_start_6d
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_70

    .line 366
    :catch_70
    :cond_70
    throw v0

    :catch_71
    nop

    :goto_72
    if-eqz v8, :cond_77

    .line 364
    :try_start_74
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_77

    :catch_77
    :cond_77
    return v3

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_7b
    return v3
.end method

.method private k()Z
    .registers 9

    .line 401
    sget-object v0, Lcom/startapp/android/a/a;->j:[Lcom/startapp/android/a/b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v1, :cond_2d

    aget-object v5, v0, v3

    .line 402
    iget-object v6, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    iget-object v7, v5, Lcom/startapp/android/a/b;->a:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/startapp/android/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    iget-object v7, v5, Lcom/startapp/android/a/b;->b:Ljava/lang/String;

    if-nez v7, :cond_1a

    if-eqz v6, :cond_1a

    add-int/lit8 v4, v4, 0x1

    .line 406
    :cond_1a
    iget-object v7, v5, Lcom/startapp/android/a/b;->b:Ljava/lang/String;

    if-eqz v7, :cond_2a

    if-eqz v6, :cond_2a

    iget-object v5, v5, Lcom/startapp/android/a/b;->b:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    add-int/lit8 v4, v4, 0x1

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_2d
    const/4 v0, 0x5

    if-lt v4, v0, :cond_31

    const/4 v2, 0x1

    :cond_31
    return v2
.end method

.method private l()Z
    .registers 8

    .line 416
    iget-object v0, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_85

    const-string v0, "/system/bin/netcfg"

    .line 417
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    :try_start_17
    new-instance v4, Ljava/lang/ProcessBuilder;

    invoke-direct {v4, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/bin/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 422
    invoke-virtual {v4, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 423
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 426
    :goto_35
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_45

    .line 427
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 429
    :cond_45
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    nop

    .line 435
    :goto_4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string v3, "\n"

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 438
    array-length v3, v0

    const/4 v4, 0x0

    :goto_5c
    if-ge v4, v3, :cond_85

    aget-object v5, v0, v4

    const-string v6, "wlan0"

    .line 439
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "tunl0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "eth0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_82

    :cond_78
    const-string v6, "10.0.2.15"

    .line 440
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v1, 0x1

    goto :goto_85

    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_85
    :goto_85
    return v1
.end method

.method private m()Z
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/startapp/android/a/a;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    .line 470
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
