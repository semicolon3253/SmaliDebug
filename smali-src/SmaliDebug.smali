.class public Lkr/semicolon1/smalidebug/SmaliDebug;
.super Ljava/lang/Object;
.source "SmaliDebug.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public static printErrorLog(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method

.method public static printFields(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, " Object {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 72
    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_29
    if-lt v1, v5, :cond_3a

    .line 84
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v0, "SmaliDebugField"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void

    .line 72
    :cond_3a
    aget-object v0, v4, v1

    .line 73
    const-string v6, "  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/4 v6, 0x1

    :try_start_42
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_58} :catch_5f

    .line 82
    :goto_58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 79
    :catch_5f
    move-exception v0

    .line 80
    const-string v6, "SmaliDebug"

    invoke-static {v6, v0}, Lkr/semicolon1/smalidebug/SmaliDebug;->printErrorLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_58
.end method

.method public static printInfoLog(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public static printSys(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static printVerboseLog(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static printWarningLog(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method

.method public static setUncaughtException()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Lkr/semicolon1/smalidebug/SmaliDebug$1;

    invoke-direct {v0}, Lkr/semicolon1/smalidebug/SmaliDebug$1;-><init>()V

    .line 55
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 56
    const-string v0, "SmaliDebug"

    const-string v1, "UncaughtExceptionHandler was setted."

    invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public static stackTrace()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    return-void
.end method
