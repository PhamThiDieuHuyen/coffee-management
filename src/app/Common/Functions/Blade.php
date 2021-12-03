<?php

declare(strict_types=1);

/**
 * Create version for resource
 *
 * @param string $file
 * @return bool|string
 */
function resource($file = '') {
    $versionFile = base_path() . '/version';
    $versionName = file_get_contents($versionFile);
    $versionName = str_replace(array("\r", "\n"), '', $versionName);
    if (empty($file)) {
        return $versionName;
    }
    return url($file) . "?v=$versionName";
}
