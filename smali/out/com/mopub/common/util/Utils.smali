.class public Lcom/mopub/common/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/mopub/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitMaskContainsFlag(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method static createHideNavigationListener(Landroid/view/View;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .registers 2

    .line 76
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    new-instance v0, Lcom/mopub/common/util/Utils$1;

    invoke-direct {v0, p0}, Lcom/mopub/common/util/Utils$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static generateUniqueId()J
    .registers 9

    .line 48
    :cond_0
    sget-object v0, Lcom/mopub/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    const-wide v6, 0x7ffffffffffffffeL

    cmp-long v8, v4, v6

    if-lez v8, :cond_14

    goto :goto_15

    :cond_14
    move-wide v2, v4

    .line 53
    :goto_15
    sget-object v4, Lcom/mopub/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method static hideNavigation(Landroid/view/View;)V
    .registers 2

    .line 89
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x1306

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static hideNavigationBar(Landroid/app/Activity;)V
    .registers 2

    .line 64
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 68
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/mopub/common/util/Utils;->hideNavigation(Landroid/view/View;)V

    .line 70
    invoke-static {p0}, Lcom/mopub/common/util/Utils;->createHideNavigationListener(Landroid/view/View;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_17
    return-void
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    const-string v1, "SHA-1"

    .line 26
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 28
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 29
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 31
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_35

    aget-byte v4, p0, v2

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 32
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 35
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_40

    return-object p0

    :catch_40
    const-string p0, ""

    return-object p0
.end method
