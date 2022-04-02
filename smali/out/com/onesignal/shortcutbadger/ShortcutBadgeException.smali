.class public Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
.super Ljava/lang/Exception;
.source "ShortcutBadgeException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
