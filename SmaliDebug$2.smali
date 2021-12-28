.class Lkr/semicolon1/smalidebug/SmaliDebug$2;
.super Ljava/lang/Object;
.source "SmaliDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/semicolon1/smalidebug/SmaliDebug;->saveFile(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lkr/semicolon1/smalidebug/SmaliDebug$2;->val$data:Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/file.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 102
    :cond_10
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 103
    iget-object v0, p0, Lkr/semicolon1/smalidebug/SmaliDebug$2;->val$data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_23

    .line 108
    :goto_22
    return-void

    .line 105
    :catch_23
    move-exception v0

    .line 106
    const-string v1, "SmaliDebugErr"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method
